package base.web.controller.common;

import base.common.model.Menu;
import base.common.model.Permission;
import base.common.model.Role;
import base.common.model.User;
import java.util.stream.Collectors;

import base.common.service.*;
import base.core.controller.BaseWebController;
import base.core.support.ActionResult;
import base.core.util.AuthUtl;
import base.patient.model.Hospital;
import base.web.json.*;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@RestController
@RequestMapping("/user")
public class UserController extends BaseWebController<User> {
    @Autowired
    UserService userService;
    @Autowired
    HospitalService hospitalService;
    @Autowired
    LogService logService;

    @Autowired
    public UserController(UserService userService) {
        super(userService);
    }

    @Autowired
    RoleService roleService;
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ActionResult<Void> login(String username, String password) {
        List<User> users = service.findByField("username", username);
        if (users == null || users.isEmpty())
            return ActionResult.failure(HttpStatus.NOT_FOUND.value(), "用户不存在");
        if (users.size() > 1)
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "发现重名用户,请联系管理员");
        User user = users.get(0);
        if (user.getPassword().equals(AuthUtl.calculateUserPassword(AuthUtl.HASH_METHOD_SHA, password))) {
            Subject subject = SecurityUtils.getSubject();
            subject.login(new UsernamePasswordToken(user.getUsername(), user.getPassword()));
            Session session = subject.getSession();
            user.setLastlogintime(new Timestamp(System.currentTimeMillis()));
            service.updateEntry(user);
            session.setAttribute(SESSION_USER_VAR, user);
            return ActionResult.success();
        }
        return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "用户名或者密码错误");
    }

    @Override
    protected ActionResult<Void> additionalOperate(JqGridOpParameter<User> parameter) {
        if ("updatePassword".equals(parameter.getOper())) {
            int id = asInt(parameter.getPrimaryKey());
            if (id <= 0) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "请设置用户的id");
            User old = service.findById(id);
            String oldPasswd = parameter.getOldValue();
            if (AuthUtl.calculateUserPassword(AuthUtl.HASH_METHOD_SHA, oldPasswd).equals(old.getPassword())) {
                old.setPassword(AuthUtl.calculateUserPassword(AuthUtl.HASH_METHOD_SHA, parameter.getValue()));
                service.updateEntry(old);
                logService.addLog("对用户"+old.getName()+"设置新密码");
                return ActionResult.success();
            }
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "更新密码失败:旧密码不匹配");
        } else if ("resetPassword".equals(parameter.getOper())) {
            int id = asInt(parameter.getPrimaryKey());
            if (id <= 0) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "请设置用户的id");
            User old = service.findById(id);
            old.setPassword(AuthUtl.calculateUserPassword(AuthUtl.HASH_METHOD_SHA, "123456"));
            service.updateEntry(old);
            logService.addLog("对用户"+old.getName()+"重设密码");
            return ActionResult.success();
        }
        return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "未知的操作");
    }

    HospitalStatus setStatus(Hospital checkHospital, final List<Hospital> hospitals) {
        HospitalStatus hospitalStatus = new HospitalStatus();
        Optional<Hospital> hospitalOptional = hospitals.stream().filter(hospital -> hospital.getId() == checkHospital.getId()).findAny();
        hospitalStatus.setCode(checkHospital.getCode());
        hospitalStatus.setId(checkHospital.getId());
        hospitalStatus.setName(checkHospital.getName());
        hospitalStatus.setChecked(hospitalOptional.isPresent());
        return hospitalStatus;
    }
    @RequestMapping(value = "/hospitalList", method = RequestMethod.GET)
    public ActionResult<List<UserHospital>> hospitalList(@Param("id") int id, HttpServletRequest request) {
        User user = userService.findById(id);
        //final List<Hospital> allHospital = user.getHospitals();
        final List<Hospital> allHospital = hospitalService.queryAll();
        List<UserHospital> userHospitals = new ArrayList<>();
        final List<Hospital> hospitals = userService.findByUserId(user.getId());
        UserHospital userHospital = new UserHospital();
        if (allHospital != null) {
            List<HospitalStatus> list = allHospital.stream().map(hospital -> setStatus(hospital,hospitals)).collect(Collectors.toList());
            userHospital.setList(list);
            userHospital.setTitleName("医院管理");
            userHospital.setUserId(user.getId());
            userHospitals.add(userHospital);
        }
        return new ActionResult<>(true, HttpStatus.OK.value(),"",userHospitals);
    }


    @RequestMapping(value = "/bindHospitalList", method = RequestMethod.GET)
    public ActionResult<List<Hospital>> bindHospitalList(@Param("id") int id) {
        List<Hospital> hospitals;
        try {
            hospitals = userService.findByUserId(id);
        } catch (Exception e) {
            e.printStackTrace();
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(),"");
        }
        return new ActionResult<>(true, HttpStatus.OK.value(),"",hospitals);
    }


    @RequestMapping(value = "/hospitalList", method = RequestMethod.PUT)
    public ActionResult<Void> saveAuthorityList(@Param("id")int id,@Param("authority") String authority) {
        userService.deleteHospitalById(id);
        String[] items = authority.split(",");
        for (String item:items ) {
            String[] arr = item.split("_");
            if(arr.length==2) {
                userService.addUser2Hospital(Integer.parseInt(arr[0]),Integer.parseInt(arr[1]));
            }
        }
        logService.addLog("重新绑定用户(id="+id+")的医院列表");
        return ActionResult.success();
    }

}

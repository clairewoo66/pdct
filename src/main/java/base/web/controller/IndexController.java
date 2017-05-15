package base.web.controller;

import base.common.model.Menu;
import base.common.model.User;
import base.common.service.MenuService;
import base.common.service.RoleService;
import base.core.support.ConstVariable;
import base.patient.model.PatientInfo;
import base.patient.service.PatientInfoService;
import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController implements ConstVariable {
    @Autowired
    RoleService roleService;
    @Autowired
    MenuService menuService;
    @Autowired
    PatientInfoService patientInfoService;

    @RequestMapping("/")
    public String index() {
        return "redirect:/home";
    }

    @RequestMapping("/homepage")
    public String home() {
        return "redirect:/patientSearch";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView main() {
        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession();
        User user = (User) session.getAttribute(SESSION_USER_VAR);
        List<Menu> list = menuService.listMenuByRole(user.getFkroleid());
        return new ModelAndView("layout", "menuList", list);
    }

    @RequestMapping("/patientSearch")
    public ModelAndView patientSearch() {
        Subject subject = SecurityUtils.getSubject();
        Map<String,Object> params = new HashedMap();
        params.put("acquisitionView",subject.isPermitted("patient:acquisitionview")||subject.isPermitted("patient:acquisition"));
        params.put("acquisitionModify",subject.isPermitted("patient:acquisition"));
        params.put("contactView",subject.isPermitted("patient:contactview")||subject.isPermitted("patient:contact"));
        params.put("contactModify",subject.isPermitted("patient:contact"));
        params.put("informView",subject.isPermitted("patient:informview")||subject.isPermitted("patient:inform"));
        params.put("informModify",subject.isPermitted("patient:inform"));
        params.put("followupView",subject.isPermitted("patient:followupview")||subject.isPermitted("patient:followup"));
        params.put("followupModify",subject.isPermitted("patient:followup"));
        return new ModelAndView("patient/search",params);
    }

    @RequestMapping("/acquisition")
    public ModelAndView acquisition(@RequestParam("patientId") String patientId,@RequestParam("hospitalId")int hospitalId) {
       PatientInfo patientInfo =  patientInfoService.findSimpleByPatientId(patientId,hospitalId);
        String gatherName = null;
        boolean editable ;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String gatherTime =simpleDateFormat.format(new Date());
        if(patientInfo==null) {
            editable = true;
        } else {
            gatherName = patientInfo.getGathererName();
            editable = (patientInfo.getAcquisitionStatus()<2);
            gatherTime = simpleDateFormat.format(patientInfo.getUpdateDate());
        }
        Subject subject = SecurityUtils.getSubject();
        Map<String,Object> params = new HashedMap();
        params.put("patientId",patientId);
        params.put("hospitalId",hospitalId);
        params.put("editable",editable&&subject.isPermitted("patient:acquisition"));
        params.put("gatherName",gatherName);
        params.put("gatherTime",gatherTime);
        return new ModelAndView("patient/acquisition",params);
    }

    @RequestMapping("/contactpatient")
    public ModelAndView contactpatient(@Param("hospitalId")String hospitalId) {
        Subject subject = SecurityUtils.getSubject();
        Map<String,Object> params = new HashedMap();
        params.put("acquisitionView",subject.isPermitted("patient:acquisitionview")||subject.isPermitted("patient:acquisition"));
        params.put("acquisitionModify",subject.isPermitted("patient:acquisition"));
        params.put("contactView",subject.isPermitted("patient:contactview")||subject.isPermitted("patient:contact"));
        params.put("contactModify",subject.isPermitted("patient:contact"));
        params.put("informView",subject.isPermitted("patient:informview")||subject.isPermitted("patient:inform"));
        params.put("informModify",subject.isPermitted("patient:inform"));
        params.put("followupView",subject.isPermitted("patient:followupview")||subject.isPermitted("patient:followup"));
        params.put("followupModify",subject.isPermitted("patient:followup"));
        params.put("hospitalId",hospitalId);
        return new ModelAndView("patient/contactpatient",params);
    }

    @RequestMapping("/contact")
    public ModelAndView contact(@RequestParam("patientId") String patientId,@RequestParam("hospitalId")int hospitalId) {
        PatientInfo patientInfo =  patientInfoService.findSimpleByPatientId(patientId,hospitalId);
        boolean editable ;
        if(patientInfo==null) {
            editable = true;
        } else {
            editable = (patientInfo.getContactStatus()<2);
        }
        Subject subject = SecurityUtils.getSubject();
        Map<String,Object> params = new HashedMap();
        params.put("patientId",patientId);
        params.put("hospitalId",hospitalId);
        params.put("editable",editable&&subject.isPermitted("patient:contact"));
        return new ModelAndView("patient/contact",params);
    }

    @RequestMapping("/informedconsent")
    public ModelAndView informedconsent(@RequestParam("patientId") String patientId,@RequestParam("hospitalId")int hospitalId) {
        PatientInfo patientInfo =  patientInfoService.findSimpleByPatientId(patientId,hospitalId);
        boolean editable ;
        if(patientInfo==null) {
            editable = true;
        } else {
            editable = (patientInfo.getAgreementStatus()<2);
        }
        Map<String,Object> params = new HashedMap();
        Subject subject = SecurityUtils.getSubject();
        params.put("patientId",patientId);
        params.put("hospitalId",hospitalId);
        params.put("editable",editable&&subject.isPermitted("patient:inform"));
        return new ModelAndView("patient/informedconsent",params);
    }

    @RequestMapping("/followup")
    public ModelAndView followup(@RequestParam("patientId") String patientId,@RequestParam("hospitalId")int hospitalId) {
        Subject subject = SecurityUtils.getSubject();
        PatientInfo patientInfo =  patientInfoService.findSimpleByPatientId(patientId,hospitalId);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String gatherTime =simpleDateFormat.format(new Date());
        boolean editable ;
        String gatherName = null;
        if(patientInfo==null) {
            editable = true;
        } else {
            editable = (patientInfo.getFollowupStatus()<2);
            gatherName= patientInfo.getGathererName();
            gatherTime = simpleDateFormat.format(patientInfo.getUpdateDate());
        }
        Map<String,Object> params = new HashedMap();
        params.put("patientId",patientId);
        params.put("hospitalId",hospitalId);
        params.put("gatherName",gatherName);
        params.put("gatherTime",gatherTime);
        params.put("editable",editable&&subject.isPermitted("patient:followup"));
        return new ModelAndView("patient/followup",params);
    }
    @RequestMapping("/user")
    public String user() {
        return "system/user";
    }

    @RequestMapping("/hospital")
    public String hospital() {
        return "system/hospital";
    }

    @RequestMapping("/menu")
    public String menu() {
        return "system/menu";
    }

    @RequestMapping("/role")
    public String role() {
        return "system/role";
    }

    @RequestMapping("/monitor")
    public String monitor() {
        return "system/druid";
    }
}


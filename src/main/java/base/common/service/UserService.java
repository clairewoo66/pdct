package base.common.service;

import base.common.mapper.UserMapper;
import base.common.model.User;
import base.core.service.BaseService;
import base.core.support.ActionResult;
import base.core.util.AuthUtl;
import base.patient.mapper.HospitalMapper;
import base.patient.model.Hospital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by zyn on 9/4/16.
 */
@Service
public class UserService extends BaseService<User> {
    @Autowired
    HospitalMapper hospitalMapper;

    @Autowired
    public UserService(UserMapper userMapper) {
        super(userMapper);
    }

    public boolean isExist(User user) {
        return !findByField("username", user.getUsername()).isEmpty();
    }

    @Override
    public ActionResult<Void> addEntry(User entry) {
        if (isExist(entry)) {
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "登录名重复");
        }
        if (entry.getPassword() == null || entry.getPassword().length() == 0) entry.setPassword("123456");
        entry.setCreatetime(new Timestamp(System.currentTimeMillis()));
        entry.setPassword(AuthUtl.calculateUserPassword(AuthUtl.HASH_METHOD_SHA, entry.getPassword()));
        return super.addEntry(entry);
    }

    @Override
    public ActionResult<Void> updateEntry(User entry) {
        if (entry.getId() <= 0) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "必须指的更新用户的id");
        User old = mapper.findById(entry.getId());
        if (old == null) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "找不到用户");
        if (!old.getUsername().equals(entry.getUsername()) && isExist(entry)) {
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "登录名重复");
        }
        entry.setPassword(old.getPassword());
        return super.updateEntry(entry);
    }

    public List<Hospital> findByUserId(int userId) {
        return hospitalMapper.findByUserID(userId);
   }

   public int deleteHospitalById(int userId) {
       return hospitalMapper.removeHospitalByUser(userId);
    }
    public int addUser2Hospital(int userId,int hospitalId) {
        return hospitalMapper.addUser2Hospital(userId,hospitalId);
   }
}

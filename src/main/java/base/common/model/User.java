package base.common.model;

import base.core.model.BaseModel;
import base.patient.model.Hospital;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by zyn on 9/4/16.
 */
public class User extends BaseModel {
    private String username;//用户登录名
    private String password;
    private int type;//类型:0:系统内建用户,1:普通用户
    private int status;//状态:0:启用,1:禁用
    private String name;//用户姓名
    private String email;
    private String phone;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp createtime;
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Timestamp lastlogintime;
    private int fkroleid;//绑定角色id
    private Role role;
    private List<Hospital> hospitals;//所属的医院,按照一个人可能管多个医院来

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Timestamp getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Timestamp createtime) {
        this.createtime = createtime;
    }

    public Timestamp getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(Timestamp lastlogintime) {
        this.lastlogintime = lastlogintime;
    }

    public int getFkroleid() {
        return fkroleid;
    }

    public void setFkroleid(int fkroleid) {
        this.fkroleid = fkroleid;
    }

    public List<Hospital> getHospitals() {
        return hospitals;
    }

    public void setHospitals(List<Hospital> hospitals) {
        this.hospitals = hospitals;
    }
}

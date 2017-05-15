package base.patient.model;

import base.core.model.BaseModel;
/**
 * Created by zyn on 10/17/16.
 */
public class Hospital extends BaseModel{
    private int id;
    private String name;//医院名称
    private String code;//医院编码

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getCode() {
        return code;
    }
    public void setCode(String code) {
        this.code = code;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}
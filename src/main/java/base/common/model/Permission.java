package base.common.model;

import base.core.model.BaseModel;

/**
 * Created by zyn on 10/16/16.
 */
public class Permission extends BaseModel {
    private String name;
    private String code;
    private int fkmenuid;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getFkmenuid() {
        return fkmenuid;
    }

    public void setFkmenuid(int fkmenuid) {
        this.fkmenuid = fkmenuid;
    }
}

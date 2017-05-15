package base.common.model;

import base.core.model.BaseModel;

/**
 * Created by zyn on 9/11/16.
 */
public class Role extends BaseModel{
    private String name;
    private String code;
    private int builtIn;//1:内置的不可修改,0:可以修改

    public int getBuiltIn() {
        return builtIn;
    }

    public void setBuiltIn(int builtIn) {
        this.builtIn = builtIn;
    }

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
}

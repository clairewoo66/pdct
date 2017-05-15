package base.web.json;

import java.util.List;

/**
 * Created by zyn on 10/16/16.
 */
public class MenuAuthority {
    private int roleId;
    private String roleName;
    private List<PermissionStatus> list;

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public List<PermissionStatus> getList() {
        return list;
    }

    public void setList(List<PermissionStatus> list) {
        this.list = list;
    }
}

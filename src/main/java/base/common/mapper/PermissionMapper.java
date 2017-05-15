package base.common.mapper;

import base.common.model.Permission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 9/11/16.
 */
public interface PermissionMapper {
    //List<Permission> queryAll();
    List<Permission> findByRole(int roleId);
    List<Permission> findByMenu(int menuId);
    int addPermission2Role(@Param("roleId") int roleId,@Param("permissionId") int permissionId);
    int removePermissionByRole(int roleId);
    int deleteAuthByMenu(int menuid);

}

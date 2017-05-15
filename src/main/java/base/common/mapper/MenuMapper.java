package base.common.mapper;

import base.common.model.Menu;
import base.web.json.JqGridQueryParameter;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 9/11/16.
 */
public interface MenuMapper {
    List<Menu> queryAll(JqGridQueryParameter parameter);
    List<Menu> listSubMenuByRole(@Param("roleId") int roleId,@Param("parentId")int parentId);
    List<Menu> listSubMenu(int parentId);
    int deleteAuthByRole(int roleid);
    int deleteAuthByMenu(int menuid);
    int addAuthBind(@Param("roleId") int roleId,@Param("menuId") int menuId);
    List<Menu> queryAllPage();
    Menu findById(int id);
}

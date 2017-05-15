package base.common.service;

import base.common.mapper.MenuMapper;
import base.common.mapper.PermissionMapper;
import base.common.model.Menu;
import base.common.model.Permission;
import base.web.json.JqGridQueryParameter;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zyn on 10/12/16.
 */
@Service
public class MenuService {
    @Autowired
    MenuMapper menuMapper;

    @Autowired
    PermissionMapper permissionMapper;
    public PageInfo<Menu> listEntries(int pageNum, int pageSize, JqGridQueryParameter query) {
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<>(menuMapper.queryAll(query));
    }

    public List<Menu> listMenuByRole(int roleId) {
        return getSubMenuByRole(roleId, 0);
    }

    public List<Menu> getSubMenuByRole(int roleId, int parentId) {
        List<Menu> list = menuMapper.listSubMenuByRole(roleId, parentId);
        for (Menu menu : list) {
            menu.setSubMenu(getSubMenuByRole(roleId, menu.getId()));
        }
        return list;
    }

    public List<Menu> listMenu() {
        return getSubMenu(0);
    }

    public List<Menu> getSubMenu(int parentId) {
        List<Menu> list = menuMapper.listSubMenu(parentId);
        for (Menu menu : list) {
            menu.setSubMenu(getSubMenu(menu.getId()));
        }
        return list;
    }

    public Menu findById(int id) {
        return menuMapper.findById(id);
    }
    public int deleteBindByRole(int roleid) {
        return menuMapper.deleteAuthByRole(roleid);
    }
    public int deleteBindPermissionByMenu(int menuid) {
        return permissionMapper.deleteAuthByMenu(menuid);
    }

    public int addBind(int roleId,int menuId) {
        return menuMapper.addAuthBind(roleId,menuId);
    }

    public int addPermissionBind(int roleId,int permissionId) {
        return permissionMapper.addPermission2Role(roleId,permissionId);
    }
}

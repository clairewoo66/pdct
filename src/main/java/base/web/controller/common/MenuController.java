package base.web.controller.common;

import base.common.model.Menu;
import base.common.model.Permission;
import base.common.model.Role;
import base.common.service.MenuService;
import base.common.service.RoleService;
import base.core.controller.BaseController;
import base.core.support.ActionResult;
import base.web.json.JqGridJsonResult;
import base.web.json.JqGridQueryParameter;
import base.web.json.MenuAuthority;
import base.web.json.PermissionStatus;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Created by zyn on 10/16/16.
 */
@RestController
@RequestMapping("/menu")
public class MenuController extends BaseController<Menu> {

    @Autowired
    MenuService menuService;

    @Autowired
    RoleService roleService;

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public JqGridJsonResult<Menu> list(@RequestBody JqGridQueryParameter parameter) {
        PageInfo<Menu> pageInfo = menuService.listEntries(parameter.getPage(), parameter.getRows(), parameter);
        return toJqGridJsonResult(pageInfo);
    }

    PermissionStatus setStatus(Permission checkPermission, final List<Permission> permissions) {
        PermissionStatus permissionStatus = new PermissionStatus();
        Optional<Permission> permissionOptional = permissions.stream().filter(permission -> permission.getId() == checkPermission.getId()).findAny();
        permissionStatus.setId(checkPermission.getId());
        permissionStatus.setName(checkPermission.getName());
        permissionStatus.setCode(checkPermission.getCode());
        permissionStatus.setFkmenuid(checkPermission.getFkmenuid());
        permissionStatus.setDescription(checkPermission.getDescription());
        permissionStatus.setChecked(permissionOptional.isPresent());
        return permissionStatus;
    }

    @RequestMapping(value = "/authorityList", method = RequestMethod.GET)
    public ActionResult<List<MenuAuthority>> authorityList(@Param("id") int id, HttpServletRequest request) {
        Menu menu = menuService.findById(id);
        final List<Permission> allPermissions = menu.getPermissions();
        List<Role> roles = roleService.queryAll();
        List<MenuAuthority> menuAuthorities = new ArrayList<>();
        if (roles != null) {
            for (Role role : roles) {
                final List<Permission> permissions = roleService.findPermissionByRole(role.getId());
                MenuAuthority menuAuthority = new MenuAuthority();
                if (allPermissions != null) {
                    List<PermissionStatus> list = allPermissions.stream().map(permission -> setStatus(permission, permissions)).collect(Collectors.toList());
                    menuAuthority.setList(list);
                    menuAuthority.setRoleName(role.getName());
                    menuAuthority.setRoleId(role.getId());
                    menuAuthorities.add(menuAuthority);
                }
            }
        }
        return new ActionResult<>(true, HttpStatus.OK.value(),"",menuAuthorities);
    }

    @RequestMapping(value = "/authorityList", method = RequestMethod.PUT)
    public ActionResult<Void> saveAuthorityList(@Param("id")int id,@Param("authority") String authority) {
        menuService.deleteBindPermissionByMenu(id);
        String[] items = authority.split(",");
        for (String item:items ) {
            String[] arr = item.split("_");
            if(arr.length==2) {
                menuService.addPermissionBind(Integer.parseInt(arr[0]),Integer.parseInt(arr[1]));
            }
        }
        return ActionResult.success();
    }

}

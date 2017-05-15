package base.web.controller.common;

import base.common.model.Menu;
import base.common.model.Role;
import base.common.service.MenuService;
import base.common.service.RoleService;
import base.core.controller.BaseWebController;
import base.core.support.ActionResult;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

/**
 * Created by zyn on 10/7/16.
 */
@RestController
@RequestMapping("/role")
public class RoleController extends BaseWebController<Role> {
    @Autowired
    MenuService menuService;

    @Autowired
    public RoleController(RoleService roleService) {
        super(roleService);
    }

    @RequestMapping(value = "/options", method = RequestMethod.GET)
    public
    @ResponseBody
    String options() {
        List<Role> roles = service.queryAll();
        String html = "<select>";
        for (Role role : roles) {
            html += "<option value=" + role.getId() + ">" + role.getName() + "</option>";
        }
        html += "</select>";
        return html;
    }

    // 保存角色权限
    @RequestMapping(value = "/saveRoleAuthority")
    public ActionResult<Void> saveRoleAuthority(HttpServletRequest request) throws IOException {
        int roleId = Integer.parseInt(request.getParameter("roleId"));
        String menuCode = request.getParameter("menuCode");
        menuService.deleteBindByRole(roleId);
        String[] menuCodesValue = menuCode.split(",");
        for (int i = 0; i < menuCodesValue.length; i++) {
            menuService.addBind(roleId, Integer.parseInt(menuCodesValue[i]));
        }
        return ActionResult.success();
    }

    // 获取菜单树
    @RequestMapping("/getAuthorityTreeList")
    public JSONObject getAuthorityTreeList(HttpServletRequest request) throws Exception {
        int roleId = Integer.parseInt(request.getParameter("roleId"));
        int menuId = Integer.parseInt(request.getParameter("id"));
        List<Menu> authMenu = menuService.getSubMenuByRole(roleId, menuId);
        List<Menu> subMenuList = menuService.getSubMenu(menuId);

        JSONObject allJSONObject = new JSONObject();
        JSONArray jsonArray = new JSONArray();
        for (Menu menu : subMenuList) {
            JSONObject subJsonObject = new JSONObject();
            subJsonObject.element("id", menu.getId());
            subJsonObject.element("name", menu.getMenuName());
            subJsonObject.element("type", "folder");
            subJsonObject.element("children", true);
            Optional<Menu> isSelected = authMenu.stream().filter(menu1 -> menu1.getId() == menu.getId()).findAny();
            if (isSelected.isPresent()) {
                subJsonObject.element("item-selected", true);
            } else {
                subJsonObject.element("item-selected", false);
            }
            subJsonObject.element("additionalParameters", subJsonObject);
            jsonArray.add(subJsonObject);
        }
        allJSONObject.element("status", "OK");
        allJSONObject.element("data", jsonArray);
        return allJSONObject;
    }

}

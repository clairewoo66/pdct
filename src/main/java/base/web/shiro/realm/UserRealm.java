package base.web.shiro.realm;

import base.common.model.Permission;
import base.common.model.User;
import base.common.service.RoleService;
import base.common.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Created by zyn on 9/4/16.
 */
public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String username = (String)principals.getPrimaryPrincipal();
        List<User> userList = userService.findByField("username",username);
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();

        if(userList.size()==1) {
            User user = userList.get(0);
            if(user.getRole()!=null) {
                HashSet<String> set = new HashSet<>();
                set.add(user.getRole().getCode());
                authorizationInfo.setRoles(set);
            }
            List<Permission> permissions = roleService.findPermissionByRole(user.getFkroleid());
            Set<String> list = permissions.stream().map(permission -> permission.getCode()).collect(Collectors.toSet());
            authorizationInfo.setStringPermissions(list);
        }

        return authorizationInfo;
    }
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

        String username = (String)token.getPrincipal();
        List<User> user = userService.findByField("username",username);
        if(user.isEmpty())  throw new UnknownAccountException("未注册账号");//没找到帐号
        else if(user.size()>1) {
            throw new AuthenticationException("账号登录名存在重复");
        } else {
            User userInfo = user.get(0);
            if(userInfo.getStatus()==1) throw new LockedAccountException("用户账号锁定");
            SimpleAuthenticationInfo authorizationInfo = new SimpleAuthenticationInfo(
                    userInfo.getUsername(),
                    userInfo.getPassword(),
                    ByteSource.Util.bytes("token"),
                    getName()
            );
            return authorizationInfo;
        }
    }

    @Override
    public void clearCachedAuthorizationInfo(PrincipalCollection principals) {
        super.clearCachedAuthorizationInfo(principals);
    }

    @Override
    public void clearCachedAuthenticationInfo(PrincipalCollection principals) {
        super.clearCachedAuthenticationInfo(principals);
    }

    @Override
    public void clearCache(PrincipalCollection principals) {
        super.clearCache(principals);
    }

    public void clearAllCachedAuthorizationInfo() {
        getAuthorizationCache().clear();
    }

    public void clearAllCachedAuthenticationInfo() {
        getAuthenticationCache().clear();
    }

    public void clearAllCache() {
        clearAllCachedAuthenticationInfo();
        clearAllCachedAuthorizationInfo();
    }
}

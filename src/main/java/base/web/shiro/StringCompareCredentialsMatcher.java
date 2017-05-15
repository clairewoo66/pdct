package base.web.shiro;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;

/**
 *  最简单的认证匹配器,比较所给的账户密码是否相等
 */
public class StringCompareCredentialsMatcher implements CredentialsMatcher {
    @Override
    public boolean doCredentialsMatch(AuthenticationToken authenticationToken, AuthenticationInfo authenticationInfo) {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        String password = new String(token.getPassword());
        String username_given = authenticationInfo.getPrincipals().toString();
        String password_given = authenticationInfo.getCredentials().toString();
        return username.equals(username_given) && password.equals(password_given);
    }
}

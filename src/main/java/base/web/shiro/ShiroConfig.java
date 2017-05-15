package base.web.shiro;

import base.web.shiro.realm.UserRealm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.session.mgt.eis.EnterpriseCacheSessionDAO;
import org.apache.shiro.session.mgt.eis.JavaUuidSessionIdGenerator;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.session.mgt.quartz.QuartzSessionValidationScheduler;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.servlet.Filter;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by zyn on 9/4/16.
 */
@Configuration
public class ShiroConfig {

    @Bean
    FormAuthenticationFilter formAuthenticationFilter() {
        FormAuthenticationFilter formAuthenticationFilter = new FormAuthenticationFilter();
        formAuthenticationFilter.setUsernameParam("username");
        formAuthenticationFilter.setPasswordParam("password");
        formAuthenticationFilter.setLoginUrl("/login");
        return formAuthenticationFilter;
    }

    /**
     * 缓存管理器 使用Ehcache实现
     *
     * @return
     */
    @Bean
    CacheManager cacheManager() {
        EhCacheManager ehCacheManager = new EhCacheManager();
        ehCacheManager.setCacheManagerConfigFile("classpath:ehcache.xml");
        return ehCacheManager;
    }

    @Bean
    CredentialsMatcher credentialsMatcher() {
        /*HashedCredentialsMatcher retryLimitHashedCredentialsMatcher = new RetryLimitHashedCredentialsMatcher(cacheManager());
        retryLimitHashedCredentialsMatcher.setHashAlgorithmName("md5");
        retryLimitHashedCredentialsMatcher.setHashIterations(2);
        retryLimitHashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);*/
        return new StringCompareCredentialsMatcher();
    }

    @Bean
    Realm realm() {
        UserRealm userRealm = new UserRealm();
        userRealm.setCredentialsMatcher(credentialsMatcher());
        userRealm.setAuthenticationCachingEnabled(true);
        userRealm.setAuthenticationCacheName("authenticationCache");
        userRealm.setAuthorizationCachingEnabled(true);
        userRealm.setAuthorizationCacheName("authorizationCache");
        return userRealm;
    }

    @Bean
    SimpleCookie sessionIdCookie() {
        SimpleCookie simpleCookie = new SimpleCookie("sid");
        simpleCookie.setHttpOnly(true);
        simpleCookie.setMaxAge(180000);
        return simpleCookie;
    }

    @Bean
    SessionDAO sessionDAO() {
        EnterpriseCacheSessionDAO sessionDAO = new EnterpriseCacheSessionDAO();
        sessionDAO.setActiveSessionsCacheName("shiro-activeSessionCache");
        sessionDAO.setSessionIdGenerator(new JavaUuidSessionIdGenerator());
        return sessionDAO;
    }

    @Bean
    DefaultWebSessionManager sessionManager() {


        DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
        sessionManager.setGlobalSessionTimeout(1800000);
        sessionManager.setDeleteInvalidSessions(true);
        sessionManager.setSessionValidationSchedulerEnabled(true);
        QuartzSessionValidationScheduler sessionValidationScheduler = new QuartzSessionValidationScheduler();
        sessionValidationScheduler.setSessionValidationInterval(1800000);
        sessionValidationScheduler.setSessionManager(sessionManager);
        sessionManager.setSessionValidationScheduler(sessionValidationScheduler);
        sessionManager.setSessionDAO(sessionDAO());
        sessionManager.setSessionIdCookieEnabled(true);
        sessionManager.setSessionIdCookie(sessionIdCookie());
        return sessionManager;
    }


    @Bean
    DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(realm());
        securityManager.setSessionManager(sessionManager());
        securityManager.setCacheManager(cacheManager());
        SecurityUtils.setSecurityManager(securityManager);
        return securityManager;
    }

    @Bean
    ShiroFilterFactoryBean shiroFilterFactoryBean() {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(securityManager());
        shiroFilterFactoryBean.setLoginUrl("/login");
        shiroFilterFactoryBean.setSuccessUrl("/home");
        shiroFilterFactoryBean.setUnauthorizedUrl("/login");
        Map<String, Filter> filterMap = new HashMap<>();
        filterMap.put("authc", formAuthenticationFilter());
        shiroFilterFactoryBean.setFilters(filterMap);
        shiroFilterFactoryBean.setFilterChainDefinitions(
                "/login = authc\n" +
                        "/user/login = anon\n" +
                        "/logout = logout\n" +
                        "/static/** = anon\n" +
                        "/** = user"
        );
        return shiroFilterFactoryBean;
    }

    @Bean
    LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }


}

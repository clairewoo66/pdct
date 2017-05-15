package base.common.service;

import base.common.mapper.LogsMapper;
import base.common.model.Log;
import base.common.model.User;
import base.core.support.ConstVariable;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by zyn on 12/26/16.
 */
@Service
public class LogService implements ConstVariable {
    @Autowired
    private LogsMapper logsMapper;
    public void addLog(String message) {
        User user = (User) SecurityUtils.getSubject().getSession().getAttribute(SESSION_USER_VAR);
        StackTraceElement[] stacktrace = Thread.currentThread().getStackTrace();
        StackTraceElement e = stacktrace[2];
        Log log = new Log();
        if(user!=null) {
            log.setOperatorId(user.getId());
            log.setOperatorName(user.getName());
        }
        log.setOperateTime(new Date());
        log.setMethod(e.getClassName()+"::"+e.getMethodName()+":"+e.getLineNumber());
        log.setMessage(message);
        logsMapper.addLog(log);
    }
}

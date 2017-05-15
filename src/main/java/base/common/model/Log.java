package base.common.model;

import java.util.Date;

/**
 * Created by zyn on 12/26/16.
 */
public class Log {
    private int id;
    private int operatorId;
    private String operatorName;
    private String method;
    private String message;
    private Date operateTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(int operatorId) {
        this.operatorId = operatorId;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getOperateTime() {
        return operateTime;
    }

    public void setOperateTime(Date operateTime) {
        this.operateTime = operateTime;
    }
}

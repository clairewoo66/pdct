package base.core.support;

import org.springframework.http.HttpStatus;

import java.io.Serializable;

/**
 * Created by zyn on 9/4/16.
 */
public class ActionResult<T> implements Serializable {

    private static final ActionResult SUCCESS = new ActionResult(true, HttpStatus.OK.value(), "", null);
    private boolean success;
    private int statusCode;
    private String message;
    private T result;

    public ActionResult() {

    }

    public ActionResult(boolean success, int statusCode, String message, T result) {
        this.success = success;
        this.statusCode = statusCode;
        this.message = message;
        this.result = result;
    }

    public static ActionResult success() {
        return SUCCESS;
    }

    public static ActionResult failure(int statusCode, String message) {
        return new ActionResult(false, statusCode, message, null);
    }

    public static ActionResult failure(String message) {
        return new ActionResult(false, HttpStatus.NO_CONTENT.value(), message, null);
    }

    public static ActionResult getSUCCESS() {
        return SUCCESS;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }
}

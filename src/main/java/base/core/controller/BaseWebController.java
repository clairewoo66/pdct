package base.core.controller;

import base.core.model.BaseModel;
import base.core.service.BaseService;
import base.core.support.ActionResult;
import base.web.json.JqGridJsonResult;
import base.web.json.JqGridOpParameter;
import base.web.json.JqGridQueryParameter;
import com.github.pagehelper.PageInfo;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by zyn on 10/16/16.
 */
public class BaseWebController<E extends BaseModel> extends BaseController<E> {
    protected BaseService<E> service;

    public BaseWebController(BaseService<E> service) {
        this.service = service;
    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public JqGridJsonResult<E> list(@RequestBody JqGridQueryParameter parameter) {
        parseJqGridParam(parameter);
        PageInfo<E> pageInfo = service.listEntries(parameter.getPage(), parameter.getRows(), parameter);
        return toJqGridJsonResult(pageInfo);
    }

    @RequestMapping(value = "/operate", method = RequestMethod.POST)
    public ActionResult<Void> operate(@RequestBody JqGridOpParameter<E> parameter) {
        if ("add".equals(parameter.getOper())) {
            return service.addEntry(parameter.getEntry());
        } else if ("del".equals(parameter.getOper())) {
            return service.deleteByIds(toIntList(parameter.getPrimaryKeys()));
        } else if ("edit".equals(parameter.getOper())) {
            return service.updateEntry(parameter.getEntry());
        }
        return additionalOperate(parameter);
    }

    protected ActionResult<Void> additionalOperate(JqGridOpParameter<E> parameter) {
        return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "未知的操作");
    }
}

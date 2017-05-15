package base.core.controller;

import base.core.model.BaseModel;
import base.core.support.ConstVariable;
import base.web.json.DataTablesResponse;
import base.web.json.JqGridFilters;
import base.web.json.JqGridJsonResult;
import base.web.json.JqGridQueryParameter;
import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.List;

public abstract class BaseController<E extends BaseModel> implements ConstVariable {

    public JqGridJsonResult<E> toJqGridJsonResult(PageInfo<E> pageInfo) {
        JqGridJsonResult<E> result = new JqGridJsonResult<>();
        if (pageInfo != null) {
            result.setTotal(pageInfo.getPages());
            result.setCurrentPage(pageInfo.getPageNum());
            result.setMaxResults(pageInfo.getPageSize());
            result.setRecords(pageInfo.getTotal());
            result.setRows(pageInfo.getList());
        }
        return result;
    }
    
    public final List<Integer> toIntList(List<String> sList) {
        List<Integer> ids = new ArrayList<>();
        for (String key : sList) {
            ids.add(asInt(key));
        }
        return ids;
    }

    public final int asInt(String str) {
        if (str == null || str == "") return 0;
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public final boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public void parseJqGridParam(JqGridQueryParameter parameter) {
        if (isNullOrEmpty(parameter.getFilters())) parameter.setFiltersObj(null);
        parameter.setFiltersObj(new Gson().fromJson(parameter.getFilters(), JqGridFilters.class));
    }
}

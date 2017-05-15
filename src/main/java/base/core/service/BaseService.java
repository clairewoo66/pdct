package base.core.service;

import base.core.mapper.BaseMapper;
import base.core.model.BaseModel;
import base.core.support.ActionResult;
import base.web.json.JqGridQueryParameter;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.http.HttpStatus;

import java.util.List;

/**
 * Created by zyn on 9/4/16.
 */

public abstract class BaseService<T extends BaseModel> {

    protected BaseMapper<T> mapper;


    protected BaseService(BaseMapper<T> mapper) {
        this.mapper = mapper;
    }

    public void setMapper(BaseMapper<T> mapper) {
        this.mapper = mapper;
    }

    public List<T> queryAll(JqGridQueryParameter query) {
        return mapper.queryAll(query);
    }

    public List<T> queryAll() {
        return mapper.queryAll(null);
    }

    public T findById(int id) {
        return mapper.findById(id);
    }

    public boolean isExist(T entry) {
        return false;
    }

    public PageInfo<T> listEntries(int pageNum, int pageSize, JqGridQueryParameter query) {
        PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<>(mapper.queryAll(query));
    }

    public PageInfo<T> listEntries(int pageNum, int pageSize, String orderBy) {
        PageHelper.startPage(pageNum, pageSize, orderBy);
        return new PageInfo<>(mapper.queryAll(null));
    }

    public List<T> findByField(String field, String value, String orderBy) {
        return mapper.findByField(field, value, orderBy);
    }

    public List<T> findByField(String field, String value) {
        return mapper.findByField(field, value, "id");
    }

    public ActionResult<Void> updateEntry(T entry) {
        try {
            mapper.updateEntry(entry);
        } catch (Exception e) {
            e.printStackTrace();
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "更新失败:服务器错误");
        }
        return ActionResult.success();
    }

    public ActionResult<Void> addEntry(T entry) {
        try {
            mapper.addEntry(entry);
        } catch (Exception e) {
            e.printStackTrace();
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "添加失败:服务器错误");
        }
        return ActionResult.success();
    }

    public ActionResult<Void> deleteById(int id) {
        try {
            mapper.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "删除失败:服务器错误");
        }
        return ActionResult.success();
    }

    public ActionResult<Void> deleteByIds(List<Integer> ids) {
        try {
            mapper.deleteByIds(ids);
        } catch (Exception e) {
            e.printStackTrace();
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "删除失败:服务器错误");
        }
        return ActionResult.success();
    }

    public ActionResult<Void> deleteByField(String field, String value) {
        try {
            mapper.deleteByField(field, value);
        } catch (Exception e) {
            e.printStackTrace();
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "删除失败:服务器错误");
        }
        return ActionResult.success();
    }
}

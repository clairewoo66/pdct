package base.core.mapper;

import base.core.model.BaseModel;
import base.web.json.JqGridQueryParameter;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BaseMapper<T extends BaseModel> {

    List<T> queryAll(JqGridQueryParameter parameter);

    List<T> findByField(@Param("field") String field, @Param("value") String value, @Param("orderBy") String orderBy);

    T findById(int id);

    int addEntry(T entry);

    int updateEntry(T entry);

    int deleteById(int id);

    int deleteByIds(@Param("ids") List<Integer> ids);

    int deleteByField(@Param("field") String field, @Param("value") String value);
}

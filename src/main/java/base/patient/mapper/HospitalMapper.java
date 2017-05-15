package base.patient.mapper;

import base.core.mapper.BaseMapper;
import base.patient.model.Hospital;
import org.apache.ibatis.annotations.Param;
import java.util.List;
/**
 * Created by zyn on 10/24/16.
 */
public interface HospitalMapper extends BaseMapper<Hospital> {
    List<Hospital> findByUserID(int userId);
    List<Hospital> findByIds(@Param("ids")String ids);
    int addUser2Hospital(@Param("userId") int userId,@Param("hospitalId") int hospitalId);
    int removeHospitalByUser(int userId);
    int deleteHospitalByHospital(int HospitalID);
    int deleteById(int id);
}
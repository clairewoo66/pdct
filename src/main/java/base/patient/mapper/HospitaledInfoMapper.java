package base.patient.mapper;

import base.patient.model.HospitaledInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/15/16.
 */
public interface HospitaledInfoMapper {
    List<HospitaledInfo> listByPatientInfo(int id);
    int addEntry(HospitaledInfo hospitaledInfo);
    int updateEntry(HospitaledInfo hospitaledInfo);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

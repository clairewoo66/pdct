package base.patient.mapper;

import base.patient.model.HospitaledComplicationStatus;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledComplicationStatusMapper {
    List<HospitaledComplicationStatus> listByHospitaledInfo(int id);
    int addEntry(HospitaledComplicationStatus hospitaledComplicationStatus);
    int updateEntry(HospitaledComplicationStatus hospitaledComplicationStatus);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

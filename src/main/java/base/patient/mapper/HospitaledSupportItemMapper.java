package base.patient.mapper;

import base.patient.model.HospitaledSupportItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledSupportItemMapper {
    List<HospitaledSupportItem> listByHospitaledInfo(int id);
    int addEntry(HospitaledSupportItem item);
    int updateEntry(HospitaledSupportItem item);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

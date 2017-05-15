package base.patient.mapper;

import base.patient.model.HospitaledBadinformationItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledBadinformationItemMapper {
    List<HospitaledBadinformationItem> listByHospitaledInfo(int id);
    int addEntry(HospitaledBadinformationItem badinformationItem);
    int updateEntry(HospitaledBadinformationItem badinformationItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

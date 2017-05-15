package base.patient.mapper;

import base.patient.model.HospitaledPlasmacyteItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledPlasmacyteItemMapper {
    List<HospitaledPlasmacyteItem> listByHospitaledInfo(int id);
    int addEntry(HospitaledPlasmacyteItem hospitaledPlasmacyteItem);
    int updateEntry(HospitaledPlasmacyteItem hospitaledPlasmacyteItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

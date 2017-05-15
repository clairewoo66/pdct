package base.patient.mapper;

import base.patient.model.HospitaledChemotherapyItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledChemotherapyItemMapper {
    List<HospitaledChemotherapyItem> listByHospitaledInfo(int id);
    int addEntry(HospitaledChemotherapyItem chemotherapyItem);
    int updateEntry(HospitaledChemotherapyItem chemotherapyItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

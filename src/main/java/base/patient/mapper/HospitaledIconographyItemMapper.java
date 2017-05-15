package base.patient.mapper;

import base.patient.model.HospitaledIconographyItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledIconographyItemMapper {
    List<HospitaledIconographyItem> listByHospitaledInfo(int id);
    int addEntry(HospitaledIconographyItem hospitaledIconographyItem);
    int updateEntry(HospitaledIconographyItem hospitaledIconographyItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

package base.patient.mapper;

import base.patient.model.HospitaledCostOtherItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 2/8/17.
 */
public interface HospitaledCostOtherItemMapper {
    List<HospitaledCostOtherItem> listByCostId(int id);
    int addEntry(HospitaledCostOtherItem hospitaledIconographyItem);
    int updateEntry(HospitaledCostOtherItem hospitaledIconographyItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
    int deleteByCostId(int id);
}

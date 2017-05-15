package base.patient.mapper;

import base.patient.model.HospitaledParenchymaItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface HospitaledParenchymaItemMapper {
    List<HospitaledParenchymaItem> listByHospitaledInfo(int id);
    int addEntry(HospitaledParenchymaItem hospitaledParenchymaItem);
    int updateEntry(HospitaledParenchymaItem hospitaledParenchymaItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

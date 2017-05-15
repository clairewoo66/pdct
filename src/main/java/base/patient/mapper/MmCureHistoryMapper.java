package base.patient.mapper;

import base.patient.model.MmCureHistory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/15/16.
 */
public interface MmCureHistoryMapper {
    List<MmCureHistory> listByPatientInfo(int patientInfoId);
    int addEntry(MmCureHistory mmCureHistory);
    int updateEntry(MmCureHistory mmCureHistory);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

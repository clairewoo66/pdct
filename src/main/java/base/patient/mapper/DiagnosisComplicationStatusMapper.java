package base.patient.mapper;

import base.patient.model.DiagnosisComplicationStatus;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface DiagnosisComplicationStatusMapper {
    List<DiagnosisComplicationStatus> listByDiagnosisId(int id);
    int addEntry(DiagnosisComplicationStatus diagnosisComplicationStatus);
    int updateEntry(DiagnosisComplicationStatus diagnosisComplicationStatus);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

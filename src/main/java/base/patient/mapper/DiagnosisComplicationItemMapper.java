package base.patient.mapper;

import base.patient.model.DiagnosisComplicationItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface DiagnosisComplicationItemMapper {
    List<DiagnosisComplicationItem> listByDiagnosisId(int id);
    int addEntry(DiagnosisComplicationItem diagnosisComplicationItem);
    int updateEntry(DiagnosisComplicationItem diagnosisComplicationItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

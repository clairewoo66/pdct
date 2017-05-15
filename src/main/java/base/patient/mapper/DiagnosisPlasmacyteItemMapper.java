package base.patient.mapper;

import base.patient.model.DiagnosisPlasmacyteItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface DiagnosisPlasmacyteItemMapper {
    List<DiagnosisPlasmacyteItem> listByDiagnosisId(int id);
    int addEntry(DiagnosisPlasmacyteItem diagnosisPlasmacyteItem);
    int updateEntry(DiagnosisPlasmacyteItem diagnosisPlasmacyteItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

package base.patient.mapper;

import base.patient.model.DiagnosisParenchymaItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface DiagnosisParenchymaItemMapper {
    List<DiagnosisParenchymaItem> listByDiagnosisId(int id);
    int addEntry(DiagnosisParenchymaItem diagnosisParenchymaItem);
    int updateEntry(DiagnosisParenchymaItem diagnosisParenchymaItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

package base.patient.mapper;

import base.patient.model.DiagnosisIconographyItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface DiagnosisIconographyItemMapper {
    List<DiagnosisIconographyItem> listByDiagnosisId(int id);
    int addEntry(DiagnosisIconographyItem diagnosisIconographyItem);
    int updateEntry(DiagnosisIconographyItem diagnosisIconographyItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

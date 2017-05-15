package base.patient.mapper;

import base.patient.model.DiagnosisFishItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface DiagnosisFishItemMapper {
    List<DiagnosisFishItem> listByDiagnosisId(int id);
    int addEntry(DiagnosisFishItem diagnosisFishItem);
    int updateEntry(DiagnosisFishItem diagnosisFishItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

package base.patient.mapper;

import base.patient.model.FollowupChemotherapyItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface FollowupChemotherapyItemMapper {
    List<FollowupChemotherapyItem> listByFollowupId(int id);
    int addEntry(FollowupChemotherapyItem followupChemotherapyItem);
    int updateEntry(FollowupChemotherapyItem followupChemotherapyItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

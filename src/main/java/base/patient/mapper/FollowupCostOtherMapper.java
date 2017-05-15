package base.patient.mapper;

import base.patient.model.FollowupCostOtherItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 2/8/17.
 */
public interface FollowupCostOtherMapper {
    List<FollowupCostOtherItem> listByFolowupId(int id);
    int addEntry(FollowupCostOtherItem hospitaledIconographyItem);
    int updateEntry(FollowupCostOtherItem hospitaledIconographyItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
    int deleteByFollowupId(int id);
}

package base.patient.mapper;

import base.patient.model.FollowupBadinformationItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface FollowupBadinformationItemMapper {
    List<FollowupBadinformationItem> listByFollowupId(int id);
    int addEntry(FollowupBadinformationItem followupBadinformationItem);
    int updateEntry(FollowupBadinformationItem followupBadinformationItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

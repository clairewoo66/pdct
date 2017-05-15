package base.patient.mapper;

import base.patient.model.FollowupIconographyItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface FollowupIconographyItemMapper {
    List<FollowupIconographyItem> listByFollowupId(int id);
    int addEntry(FollowupIconographyItem followupIconographyItem);
    int updateEntry(FollowupIconographyItem followupIconographyItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

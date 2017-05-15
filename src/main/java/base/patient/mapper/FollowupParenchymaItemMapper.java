package base.patient.mapper;

import base.patient.model.FollowupParenchymaItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface FollowupParenchymaItemMapper {
    List<FollowupParenchymaItem> listByFollowupId(int id);
    int addEntry(FollowupParenchymaItem followupParenchymaItem);
    int updateEntry(FollowupParenchymaItem followupParenchymaItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

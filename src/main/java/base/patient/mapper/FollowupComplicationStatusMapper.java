package base.patient.mapper;

import base.patient.model.FollowupComplicationStatus;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface FollowupComplicationStatusMapper {
    List<FollowupComplicationStatus> listByFollowupId(int id);
    int addEntry(FollowupComplicationStatus followupComplicationStatus);
    int updateEntry(FollowupComplicationStatus followupComplicationStatus);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

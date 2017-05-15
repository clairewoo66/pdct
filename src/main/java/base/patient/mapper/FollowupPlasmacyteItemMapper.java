package base.patient.mapper;

import base.patient.model.FollowupPlasmacyteItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zyn on 11/16/16.
 */
public interface FollowupPlasmacyteItemMapper {
    List<FollowupPlasmacyteItem> listByFollowupId(int id);

    int addEntry(FollowupPlasmacyteItem followupPlasmacyteItem);

    int updateEntry(FollowupPlasmacyteItem followupPlasmacyteItem);
    int deleteByIds(@Param("ids") List<Integer> ids);
}

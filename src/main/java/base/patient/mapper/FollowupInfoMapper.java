package base.patient.mapper;

import base.patient.model.FollowupInfo;

/**
 * Created by zyn on 11/15/16.
 */
public interface FollowupInfoMapper {
    FollowupInfo findById(int id);
    int addEntry(FollowupInfo followupInfo);
    int updateEntry(FollowupInfo followupInfo);
}

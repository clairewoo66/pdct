package base.patient.service;

import base.patient.mapper.*;
import base.patient.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by zyn on 11/17/16.
 */
@Service
public class FollowupService {
    @Autowired
    FollowupInfoMapper followupInfoMapper;
    @Autowired
    FollowupComplicationStatusMapper followupComplicationStatusMapper;
    @Autowired
    FollowupLaboratoryExaminationMapper followupLaboratoryExaminationMapper;
    @Autowired
    FollowupPlasmacyteItemMapper followupPlasmacyteItemMapper;
    @Autowired
    FollowupParenchymaItemMapper followupParenchymaItemMapper;
    @Autowired
    FollowupIconographyItemMapper followupIconographyItemMapper;
    @Autowired
    FollowupChemotherapyItemMapper followupChemotherapyItemMapper;
    @Autowired
    FollowupBadinformationItemMapper followupBadinformationItemMapper;
    @Autowired
    FollowupCostOtherMapper followupCostOtherMapper;

    @Transactional
    public int addFollowupInfo(FollowupInfo followupInfo) {
        FollowupLaboratoryExamination followupLaboratoryExamination = followupInfo.getFollowupLaboratoryExamination();
        if (followupLaboratoryExamination != null) {
            followupLaboratoryExamination.setCreateDate(new Date());
            followupLaboratoryExamination.setUpdateDate(new Date());
            followupLaboratoryExaminationMapper.addEntry(followupLaboratoryExamination);
            followupInfo.setLaboratoryId(followupLaboratoryExamination.getId());
        }
        followupInfoMapper.addEntry(followupInfo);
        int id = followupInfo.getId();
        if (followupInfo.getFollowupComplicationStatuses() != null) {
            for (FollowupComplicationStatus followupComplicationStatus : followupInfo.getFollowupComplicationStatuses()) {
                followupComplicationStatus.setFollowupId(id);
                followupComplicationStatus.setCreateDate(new Date());
                followupComplicationStatus.setUpdateDate(new Date());
                followupComplicationStatusMapper.addEntry(followupComplicationStatus);
            }
        }
        if (followupInfo.getFollowupParenchymaItems() != null) {
            for (FollowupParenchymaItem followupParenchymaItem : followupInfo.getFollowupParenchymaItems()) {
                followupParenchymaItem.setFollowupId(id);
                followupParenchymaItem.setCreateDate(new Date());
                followupParenchymaItem.setUpdateDate(new Date());
                followupParenchymaItemMapper.addEntry(followupParenchymaItem);
            }
        }
        if (followupInfo.getFollowupPlasmacyteItems() != null) {
            for (FollowupPlasmacyteItem followupPlasmacyteItem : followupInfo.getFollowupPlasmacyteItems()) {
                followupPlasmacyteItem.setFollowupId(id);
                followupPlasmacyteItem.setCreateDate(new Date());
                followupPlasmacyteItem.setUpdateDate(new Date());
                followupPlasmacyteItemMapper.addEntry(followupPlasmacyteItem);
            }
        }
        if (followupInfo.getFollowupIconographyItems() != null) {
            for (FollowupIconographyItem followupIconographyItem : followupInfo.getFollowupIconographyItems()) {
                followupIconographyItem.setFollowupId(id);
                followupIconographyItem.setCreateDate(new Date());
                followupIconographyItem.setUpdateDate(new Date());
                followupIconographyItemMapper.addEntry(followupIconographyItem);
            }
        }
        if (followupInfo.getFollowupChemotherapyItems() != null) {
            for (FollowupChemotherapyItem followupChemotherapyItem : followupInfo.getFollowupChemotherapyItems()) {
                followupChemotherapyItem.setFollowupId(id);
                followupChemotherapyItem.setCreateDate(new Date());
                followupChemotherapyItem.setUpdateDate(new Date());
                followupChemotherapyItemMapper.addEntry(followupChemotherapyItem);
            }
        }
        if (followupInfo.getFollowupBadinformationItems() != null) {
            for (FollowupBadinformationItem followupBadinformationItem : followupInfo.getFollowupBadinformationItems()) {
                followupBadinformationItem.setFollowupId(id);
                followupBadinformationItem.setCreateDate(new Date());
                followupBadinformationItem.setUpdateDate(new Date());
                followupBadinformationItemMapper.addEntry(followupBadinformationItem);
            }
        }
        if(followupInfo.getOtherCostItems()!=null) {
            for(FollowupCostOtherItem item:followupInfo.getOtherCostItems()) {
                item.setFollowupid(followupInfo.getId());
                followupCostOtherMapper.addEntry(item);
            }
        }
        return followupInfo.getId();
    }

    @Transactional
    public void updateFollowupInfo(FollowupInfo followupInfo) {
        if(followupInfo.getId()<=0) {
            addFollowupInfo(followupInfo);
            return;
        }
        followupInfo.setUpdateDate(new Date());
        FollowupLaboratoryExamination followupLaboratoryExamination = followupInfo.getFollowupLaboratoryExamination();
        if (followupLaboratoryExamination != null) {
            followupLaboratoryExamination.setUpdateDate(new Date());
            if(followupLaboratoryExamination.getId()>0){
                followupLaboratoryExamination.setCreateDate(new Date());
                followupLaboratoryExaminationMapper.updateEntry(followupLaboratoryExamination);
            } else {
                followupLaboratoryExaminationMapper.addEntry(followupLaboratoryExamination);
            }
            followupInfo.setLaboratoryId(followupLaboratoryExamination.getId());
        }
        followupInfoMapper.updateEntry(followupInfo);
        int id = followupInfo.getId();

        List<FollowupComplicationStatus> complicationStatuses = followupInfo.getFollowupComplicationStatuses();
        if (complicationStatuses != null) {
            List<FollowupComplicationStatus> oldList = followupComplicationStatusMapper.listByFollowupId(id);
            List<Integer> deleteList = oldList.stream().filter(item->!complicationStatuses.contains(item)).map(FollowupComplicationStatus::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                followupComplicationStatusMapper.deleteByIds(deleteList);
            for (FollowupComplicationStatus entry : complicationStatuses) {
                entry.setFollowupId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    followupComplicationStatusMapper.updateEntry(entry);
                } else {
                    followupComplicationStatusMapper.addEntry(entry);
                }
            }
        }

        List<FollowupParenchymaItem> parenchymaItems = followupInfo.getFollowupParenchymaItems();
        if (parenchymaItems != null) {
            List<FollowupParenchymaItem> oldList = followupParenchymaItemMapper.listByFollowupId(id);
            List<Integer> deleteList = oldList.stream().filter(item->!parenchymaItems.contains(item)).map(FollowupParenchymaItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                followupParenchymaItemMapper.deleteByIds(deleteList);
            for (FollowupParenchymaItem entry : parenchymaItems) {
                entry.setFollowupId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    followupParenchymaItemMapper.updateEntry(entry);
                } else {
                    followupParenchymaItemMapper.addEntry(entry);
                }
            }
        }
        List<FollowupPlasmacyteItem> plasmacyteItems = followupInfo.getFollowupPlasmacyteItems();
        if (plasmacyteItems!= null) {
            List<FollowupPlasmacyteItem> oldList = followupPlasmacyteItemMapper.listByFollowupId(id);
            List<Integer> deleteList = oldList.stream().filter(item->!parenchymaItems.contains(item)).map(FollowupPlasmacyteItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                followupPlasmacyteItemMapper.deleteByIds(deleteList);
            for (FollowupPlasmacyteItem entry : plasmacyteItems) {
                entry.setFollowupId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    followupPlasmacyteItemMapper.updateEntry(entry);
                } else {
                    followupPlasmacyteItemMapper.addEntry(entry);
                }
            }
        }
        List<FollowupIconographyItem> iconographyItems = followupInfo.getFollowupIconographyItems();
        if (followupInfo.getFollowupIconographyItems() != null) {
            List<FollowupIconographyItem> oldList = followupIconographyItemMapper.listByFollowupId(id);
            List<Integer> deleteList = oldList.stream().filter(item->!iconographyItems.contains(item)).map(FollowupIconographyItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                followupIconographyItemMapper.deleteByIds(deleteList);
            for (FollowupIconographyItem entry : iconographyItems) {
                entry.setFollowupId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    followupIconographyItemMapper.updateEntry(entry);
                } else {
                    followupIconographyItemMapper.addEntry(entry);
                }
            }
        }
        List<FollowupChemotherapyItem> chemotherapyItems = followupInfo.getFollowupChemotherapyItems();
        if (chemotherapyItems!= null) {
            List<FollowupChemotherapyItem> oldList = followupChemotherapyItemMapper.listByFollowupId(id);
            List<Integer> deleteList = oldList.stream().filter(item->!iconographyItems.contains(item)).map(FollowupChemotherapyItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                followupChemotherapyItemMapper.deleteByIds(deleteList);
            for (FollowupChemotherapyItem entry : chemotherapyItems) {
                entry.setFollowupId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    followupChemotherapyItemMapper.updateEntry(entry);
                } else {
                    followupChemotherapyItemMapper.addEntry(entry);
                }
            }
        }
        List<FollowupBadinformationItem> badinformationItems = followupInfo.getFollowupBadinformationItems();
        if (badinformationItems != null) {
            List<FollowupBadinformationItem> oldList = followupBadinformationItemMapper.listByFollowupId(id);
            List<Integer> deleteList = oldList.stream().filter(item->!badinformationItems.contains(item)).map(FollowupBadinformationItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                followupBadinformationItemMapper.deleteByIds(deleteList);
            for (FollowupBadinformationItem entry : badinformationItems) {
                entry.setFollowupId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    followupBadinformationItemMapper.updateEntry(entry);
                } else {
                    followupBadinformationItemMapper.addEntry(entry);
                }
            }
        }
        followupCostOtherMapper.deleteByFollowupId(followupInfo.getId());
        if(followupInfo.getOtherCostItems()!=null) {
            for(FollowupCostOtherItem item:followupInfo.getOtherCostItems()) {
                item.setFollowupid(followupInfo.getId());
                followupCostOtherMapper.addEntry(item);
            }
        }
    }
}

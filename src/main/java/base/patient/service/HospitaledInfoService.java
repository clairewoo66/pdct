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
public class HospitaledInfoService {
    @Autowired
    private HospitaledInfoMapper hospitaledInfoMapper;
    @Autowired
    private HospitaledLaboratoryExaminationMapper hospitaledLaboratoryExaminationMapper;
    @Autowired
    private HospitaledComplicationStatusMapper hospitaledComplicationStatusMapper;
    @Autowired
    private HospitaledPlasmacyteItemMapper hospitaledPlasmacyteItemMapper;
    @Autowired
    private HospitaledIconographyItemMapper hospitaledIconographyItemMapper;
    @Autowired
    private HospitaledParenchymaItemMapper hospitaledParenchymaItemMapper;
    @Autowired
    private HospitaledChemotherapyItemMapper hospitaledChemotherapyItemMapper;
    @Autowired
    private HospitaledSupportItemMapper hospitaledSupportItemMapper;
    @Autowired
    private HospitaledBadinformationItemMapper hospitaledBadinformationItemMapper;
    @Autowired
    private HospitaledCostMapper hospitaledCostMapper;
    @Autowired
    private HospitaledCostOtherItemMapper hospitaledCostOtherItemMapper;


    @Transactional
    public void addHospitaledInfos(List<HospitaledInfo> hospitaledInfos, int patientId) {
        for (HospitaledInfo hospitaledInfo : hospitaledInfos) {
            hospitaledInfo.setPatientId(patientId);
            hospitaledInfo.setCreateDate(new Date());
            hospitaledInfo.setUpdateDate(new Date());
            this.addHospitaledInfo(hospitaledInfo);
        }
    }

    @Transactional
    public void addHospitaledInfo(HospitaledInfo hospitaledInfo) {
        HospitaledLaboratoryExamination hospitaledLaboratoryExamination = hospitaledInfo.getHospitaledLaboratoryExamination();
        if (hospitaledLaboratoryExamination != null) {
            hospitaledLaboratoryExaminationMapper.addEntry(hospitaledLaboratoryExamination);
            hospitaledInfo.setHospitaledLaboratoryExaminationId(hospitaledLaboratoryExamination.getId());
        }
        HospitaledCost hospitaledCost = hospitaledInfo.getHospitaledCost();
        if (hospitaledCost != null) {
            hospitaledCost.setCreateDate(new Date());
            hospitaledCost.setUpdateDate(new Date());
            hospitaledCostMapper.addEntry(hospitaledCost);
            if(hospitaledCost.getOtherHospitalCost()!=null) {
                for(HospitaledCostOtherItem item:hospitaledCost.getOtherHospitalCost()) {
                    item.setCostId(hospitaledCost.getId());
                    hospitaledCostOtherItemMapper.addEntry(item);
                }
            }
            hospitaledInfo.setFkcostid(hospitaledCost.getId());
        }
        hospitaledInfoMapper.addEntry(hospitaledInfo);
        int id = hospitaledInfo.getId();
        if (hospitaledInfo.getComplicationStatusList() != null) {
            for (HospitaledComplicationStatus hospitaledComplicationStatus : hospitaledInfo.getComplicationStatusList()) {
                hospitaledComplicationStatus.setHospitaledId(id);
                hospitaledComplicationStatus.setCreateDate(new Date());
                hospitaledComplicationStatus.setUpdateDate(new Date());
                hospitaledComplicationStatusMapper.addEntry(hospitaledComplicationStatus);
            }
        }
        if (hospitaledInfo.getHospitaledPlasmacyteItems() != null) {
            for (HospitaledPlasmacyteItem hospitaledPlasmacyteItem : hospitaledInfo.getHospitaledPlasmacyteItems()) {
                hospitaledPlasmacyteItem.setHospitaledId(id);
                hospitaledPlasmacyteItem.setCreateDate(new Date());
                hospitaledPlasmacyteItem.setUpdateDate(new Date());
                hospitaledPlasmacyteItemMapper.addEntry(hospitaledPlasmacyteItem);
            }
        }
        if (hospitaledInfo.getIconographyItems() != null) {
            for (HospitaledIconographyItem iconographyItem : hospitaledInfo.getIconographyItems()) {
                iconographyItem.setHospitaledId(id);
                iconographyItem.setCreateDate(new Date());
                iconographyItem.setUpdateDate(new Date());
                hospitaledIconographyItemMapper.addEntry(iconographyItem);
            }
        }
        if (hospitaledInfo.getHospitaledParenchymaItems() != null) {
            for (HospitaledParenchymaItem hospitaledParenchymaItem : hospitaledInfo.getHospitaledParenchymaItems()) {
                hospitaledParenchymaItem.setHospitaledId(id);
                hospitaledParenchymaItem.setCreateDate(new Date());
                hospitaledParenchymaItem.setUpdateDate(new Date());
                hospitaledParenchymaItemMapper.addEntry(hospitaledParenchymaItem);
            }
        }
        if (hospitaledInfo.getHospitaledChemotherapyItems() != null) {
            for (HospitaledChemotherapyItem item : hospitaledInfo.getHospitaledChemotherapyItems()) {
                item.setHospitaledId(id);
                item.setCreateDate(new Date());
                item.setUpdateDate(new Date());
                hospitaledChemotherapyItemMapper.addEntry(item);
            }
        }
        if (hospitaledInfo.getHospitaledSupportItems() != null) {
            for (HospitaledSupportItem item : hospitaledInfo.getHospitaledSupportItems()) {
                item.setHospitaledId(id);
                item.setCreateDate(new Date());
                item.setUpdateDate(new Date());
                hospitaledSupportItemMapper.addEntry(item);
            }
        }
        if (hospitaledInfo.getBadinformationItems() != null) {
            for (HospitaledBadinformationItem badinformationItem : hospitaledInfo.getBadinformationItems()) {
                badinformationItem.setHospitaledId(id);
                badinformationItem.setCreateDate(new Date());
                badinformationItem.setUpdateDate(new Date());
                hospitaledBadinformationItemMapper.addEntry(badinformationItem);
            }
        }
    }

    @Transactional
    public void updateHospitaledInfo(HospitaledInfo hospitaledInfo) {
        if (hospitaledInfo.getId() <= 0) {
            addHospitaledInfo(hospitaledInfo);
            return;
        }
        HospitaledLaboratoryExamination hospitaledLaboratoryExamination = hospitaledInfo.getHospitaledLaboratoryExamination();
        if (hospitaledLaboratoryExamination != null) {
            hospitaledLaboratoryExamination.setUpdateDate(new Date());
            if (hospitaledLaboratoryExamination.getId() > 0) {
                hospitaledLaboratoryExamination.setCreateDate(new Date());
                hospitaledLaboratoryExaminationMapper.updateEntry(hospitaledLaboratoryExamination);
            } else {
                hospitaledLaboratoryExaminationMapper.addEntry(hospitaledLaboratoryExamination);
            }
            hospitaledInfo.setHospitaledLaboratoryExaminationId(hospitaledLaboratoryExamination.getId());
        }
        HospitaledCost hospitaledCost = hospitaledInfo.getHospitaledCost();
        if (hospitaledCost != null) {
            hospitaledCost.setUpdateDate(new Date());
            if (hospitaledCost.getId() > 0) {
                hospitaledCost.setCreateDate(new Date());
                hospitaledCostMapper.updateEntry(hospitaledCost);
                hospitaledCostOtherItemMapper.deleteByCostId(hospitaledCost.getId());
            } else {
                hospitaledCostMapper.addEntry(hospitaledCost);
            }
            if(hospitaledCost.getOtherHospitalCost()!=null) {
                for(HospitaledCostOtherItem item:hospitaledCost.getOtherHospitalCost()) {
                    item.setCostId(hospitaledCost.getId());
                    hospitaledCostOtherItemMapper.addEntry(item);
                }
            }
            hospitaledInfo.setFkcostid(hospitaledCost.getId());
        }
        hospitaledInfoMapper.updateEntry(hospitaledInfo);
        int id = hospitaledInfo.getId();
        List<HospitaledComplicationStatus> complicationStatuses = hospitaledInfo.getComplicationStatusList();
        if (complicationStatuses != null) {
            List<HospitaledComplicationStatus> oldList = hospitaledComplicationStatusMapper.listByHospitaledInfo(id);
            List<Integer> deleteList = oldList.stream().filter(item->!complicationStatuses.contains(item)).map(HospitaledComplicationStatus::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                hospitaledComplicationStatusMapper.deleteByIds(deleteList);
            for (HospitaledComplicationStatus entry : complicationStatuses) {
                entry.setHospitaledId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    hospitaledComplicationStatusMapper.updateEntry(entry);
                } else {
                    hospitaledComplicationStatusMapper.addEntry(entry);
                }
            }
        }
        List<HospitaledPlasmacyteItem> plasmacyteItems = hospitaledInfo.getHospitaledPlasmacyteItems();
        if (plasmacyteItems != null) {
            List<HospitaledPlasmacyteItem> oldList = hospitaledPlasmacyteItemMapper.listByHospitaledInfo(id);
            List<Integer> deleteList = oldList.stream().filter(item->!plasmacyteItems.contains(item)).map(HospitaledPlasmacyteItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                hospitaledPlasmacyteItemMapper.deleteByIds(deleteList);
            for (HospitaledPlasmacyteItem entry : plasmacyteItems) {
                entry.setHospitaledId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    hospitaledPlasmacyteItemMapper.updateEntry(entry);
                } else {
                    hospitaledPlasmacyteItemMapper.addEntry(entry);
                }
            }
        }
        List<HospitaledIconographyItem> iconographyItems = hospitaledInfo.getIconographyItems();
        if (iconographyItems != null) {
            List<HospitaledIconographyItem> oldList = hospitaledIconographyItemMapper.listByHospitaledInfo(id);
            List<Integer> deleteList = oldList.stream().filter(item->!iconographyItems.contains(item)).map(HospitaledIconographyItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                hospitaledIconographyItemMapper.deleteByIds(deleteList);
            for (HospitaledIconographyItem entry : iconographyItems) {
                entry.setHospitaledId(id);
                entry.setCreateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setUpdateDate(new Date());
                    hospitaledIconographyItemMapper.updateEntry(entry);
                } else {
                    hospitaledIconographyItemMapper.addEntry(entry);
                }
            }
        }
        List<HospitaledParenchymaItem> parenchymaItems = hospitaledInfo.getHospitaledParenchymaItems();
        if (parenchymaItems != null) {
            List<HospitaledParenchymaItem> oldList = hospitaledParenchymaItemMapper.listByHospitaledInfo(id);
            List<Integer> deleteList = oldList.stream().filter(item->!parenchymaItems.contains(item)).map(HospitaledParenchymaItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                hospitaledParenchymaItemMapper.deleteByIds(deleteList);
            for (HospitaledParenchymaItem entry : parenchymaItems) {
                entry.setHospitaledId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    hospitaledParenchymaItemMapper.updateEntry(entry);
                } else {
                    hospitaledParenchymaItemMapper.addEntry(entry);
                }
            }
        }
        List<HospitaledChemotherapyItem> chemotherapyItems = hospitaledInfo.getHospitaledChemotherapyItems();

        if (chemotherapyItems != null) {
            List<HospitaledChemotherapyItem> oldList = hospitaledChemotherapyItemMapper.listByHospitaledInfo(id);
            List<Integer> deleteList = oldList.stream().filter(item->!chemotherapyItems.contains(item)).map(HospitaledChemotherapyItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                hospitaledChemotherapyItemMapper.deleteByIds(deleteList);
            for (HospitaledChemotherapyItem entry : chemotherapyItems) {
                entry.setHospitaledId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    hospitaledChemotherapyItemMapper.updateEntry(entry);
                } else {
                    hospitaledChemotherapyItemMapper.addEntry(entry);
                }
            }
        }

        List<HospitaledSupportItem> supportItems = hospitaledInfo.getHospitaledSupportItems();

        if (supportItems != null) {
            List<HospitaledSupportItem> oldList = hospitaledSupportItemMapper.listByHospitaledInfo(id);
            List<Integer> deleteList = oldList.stream().filter(item->!supportItems.contains(item)).map(HospitaledSupportItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                hospitaledSupportItemMapper.deleteByIds(deleteList);
            for (HospitaledSupportItem entry : supportItems) {
                entry.setHospitaledId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    hospitaledSupportItemMapper.updateEntry(entry);
                } else {
                    hospitaledSupportItemMapper.addEntry(entry);
                }
            }
        }
        List<HospitaledBadinformationItem> badinformationItems = hospitaledInfo.getBadinformationItems();
        if (badinformationItems != null) {
            List<HospitaledBadinformationItem> oldList = hospitaledBadinformationItemMapper.listByHospitaledInfo(id);
            List<Integer> deleteList = oldList.stream().filter(item->!badinformationItems.contains(item)).map(HospitaledBadinformationItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                hospitaledBadinformationItemMapper.deleteByIds(deleteList);
            for (HospitaledBadinformationItem entry : badinformationItems) {
                entry.setHospitaledId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    hospitaledBadinformationItemMapper.updateEntry(entry);
                } else {
                    hospitaledBadinformationItemMapper.addEntry(entry);
                }
            }
        }
    }

    @Transactional
    public void updateHospitaledInfos(List<HospitaledInfo> hospitaledInfos, int patientId) {
        List<HospitaledInfo> oldList = hospitaledInfoMapper.listByPatientInfo(patientId);
        List<Integer> deleteList = oldList.stream().filter(item->!hospitaledInfos.contains(item)).map(HospitaledInfo::getId).collect(Collectors.toList());
        if (deleteList.size() > 0)
            hospitaledInfoMapper.deleteByIds(deleteList);
        for (HospitaledInfo hospitaledInfo : hospitaledInfos) {
            hospitaledInfo.setPatientId(patientId);
            hospitaledInfo.setUpdateDate(new Date());
            if (hospitaledInfo.getId() > 0) {
                hospitaledInfo.setCreateDate(new Date());
                updateHospitaledInfo(hospitaledInfo);
            } else {
                addHospitaledInfo(hospitaledInfo);
            }
        }
    }
}

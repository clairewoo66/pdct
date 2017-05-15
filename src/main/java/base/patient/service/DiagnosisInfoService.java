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
public class DiagnosisInfoService {
    @Autowired
    DiagnosisInfoMapper diagnosisInfoMapper;
    @Autowired
    DiagnosisLaboratoryExaminationMapper diagnosisLaboratoryExaminationMapper;
    @Autowired
    DiagnosisComplicationStatusMapper diagnosisComplicationStatusMapper;
    @Autowired
    DiagnosisComplicationItemMapper diagnosisComplicationItemMapper;
    @Autowired
    DiagnosisIconographyItemMapper diagnosisIconographyItemMapper;
    @Autowired
    DiagnosisPlasmacyteItemMapper diagnosisPlasmacyteItemMapper;
    @Autowired
    DiagnosisParenchymaItemMapper diagnosisParenchymaItemMapper;
    @Autowired
    DiagnosisFishItemMapper diagnosisFishItemMapper;

    @Transactional
    public int addDiagnosisInfo(DiagnosisInfo diagnosisInfo) {
        diagnosisInfo.setCreateDate(new Date());
        DiagnosisLaboratoryExamination diagnosisLaboratoryExamination = diagnosisInfo.getDiagnosisLaboratoryExamination();
        if (diagnosisLaboratoryExamination != null) {
            diagnosisLaboratoryExaminationMapper.addEntry(diagnosisLaboratoryExamination);
            diagnosisLaboratoryExamination.setCreateDate(new Date());
            diagnosisInfo.setDiagnosisLaboratoryExaminationId(diagnosisLaboratoryExamination.getId());
        }
        diagnosisInfoMapper.addEntry(diagnosisInfo);
        int id = diagnosisInfo.getId();
        if (diagnosisInfo.getDiagnosisComplicationStatuses() != null) {
            for (DiagnosisComplicationStatus diagnosisComplicationStatus : diagnosisInfo.getDiagnosisComplicationStatuses()) {
                diagnosisComplicationStatus.setDiagnosisId(id);
                diagnosisComplicationStatus.setCreateDate(new Date());
                diagnosisComplicationStatusMapper.addEntry(diagnosisComplicationStatus);
            }
        }
        if (diagnosisInfo.getDiagnosisComplicationItems() != null) {
            for (DiagnosisComplicationItem diagnosisComplicationItem : diagnosisInfo.getDiagnosisComplicationItems()) {
                diagnosisComplicationItem.setDiagnosisId(id);
                diagnosisComplicationItem.setCreateDate(new Date());
                diagnosisComplicationItemMapper.addEntry(diagnosisComplicationItem);
            }
        }
        if (diagnosisInfo.getDiagnosisIconographyItems() != null) {
            for (DiagnosisIconographyItem diagnosisIconographyItem : diagnosisInfo.getDiagnosisIconographyItems()) {
                diagnosisIconographyItem.setDiagnosisId(id);
                diagnosisIconographyItem.setCreateDate(new Date());
                diagnosisIconographyItemMapper.addEntry(diagnosisIconographyItem);
            }
        }
        if (diagnosisInfo.getDiagnosisPlasmacyteItems() != null) {
            for (DiagnosisPlasmacyteItem diagnosisPlasmacyteItem : diagnosisInfo.getDiagnosisPlasmacyteItems()) {
                diagnosisPlasmacyteItem.setDiagnosisId(id);
                diagnosisPlasmacyteItem.setCreateDate(new Date());
                diagnosisPlasmacyteItemMapper.addEntry(diagnosisPlasmacyteItem);
            }
        }
        if (diagnosisInfo.getDiagnosisParenchymaItems() != null) {
            {
                for (DiagnosisParenchymaItem diagnosisParenchymaItem : diagnosisInfo.getDiagnosisParenchymaItems()) {
                    diagnosisParenchymaItem.setDiagnosisId(id);
                    diagnosisParenchymaItem.setCreateDate(new Date());
                    diagnosisParenchymaItemMapper.addEntry(diagnosisParenchymaItem);
                }
            }
        }
        if (diagnosisInfo.getDiagnosisFishStatus() == 1 && diagnosisInfo.getDiagnosisFishItems() != null) {
            for (DiagnosisFishItem fishItem : diagnosisInfo.getDiagnosisFishItems()) {
                fishItem.setDiagnosisId(id);
                fishItem.setCreateDate(new Date());
                diagnosisFishItemMapper.addEntry(fishItem);
            }
        }
        return diagnosisInfo.getId();
    }

    @Transactional
    public void updateDiagnosisInfo(DiagnosisInfo diagnosisInfo) {
        if (diagnosisInfo.getId() <= 0) {
            addDiagnosisInfo(diagnosisInfo);
            return;
        }
        diagnosisInfo.setUpdateDate(new Date());
        DiagnosisLaboratoryExamination diagnosisLaboratoryExamination = diagnosisInfo.getDiagnosisLaboratoryExamination();
        if (diagnosisLaboratoryExamination != null) {
            diagnosisLaboratoryExamination.setUpdateDate(new Date());
            if (diagnosisLaboratoryExamination.getId() > 0) {
                diagnosisLaboratoryExamination.setCreateDate(new Date());
                diagnosisLaboratoryExaminationMapper.updateEntry(diagnosisLaboratoryExamination);
            } else {
                diagnosisLaboratoryExaminationMapper.addEntry(diagnosisLaboratoryExamination);
            }
            diagnosisInfo.setDiagnosisLaboratoryExaminationId(diagnosisLaboratoryExamination.getId());
        }
        diagnosisInfoMapper.updateEntry(diagnosisInfo);
        int id = diagnosisInfo.getId();
        List<DiagnosisComplicationStatus> complicationStatuses = diagnosisInfo.getDiagnosisComplicationStatuses();
        if (complicationStatuses != null) {
            List<DiagnosisComplicationStatus> oldList = diagnosisComplicationStatusMapper.listByDiagnosisId(id);
            List<Integer> deleteList = oldList.stream().filter(item -> !complicationStatuses.contains(item)).map(DiagnosisComplicationStatus::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                diagnosisComplicationStatusMapper.deleteByIds(deleteList);
            for (DiagnosisComplicationStatus diagnosisComplicationStatus : complicationStatuses) {
                diagnosisComplicationStatus.setDiagnosisId(id);
                diagnosisComplicationStatus.setUpdateDate(new Date());
                if (diagnosisComplicationStatus.getId() > 0) {
                    diagnosisComplicationStatus.setCreateDate(new Date());
                    diagnosisComplicationStatusMapper.updateEntry(diagnosisComplicationStatus);
                } else {
                    diagnosisComplicationStatusMapper.addEntry(diagnosisComplicationStatus);
                }
            }
        }
        System.out.println("********************************");
        List<DiagnosisComplicationItem> complicationItems = diagnosisInfo.getDiagnosisComplicationItems();
        if (complicationItems != null) {
            List<DiagnosisComplicationItem> oldList = diagnosisComplicationItemMapper.listByDiagnosisId(id);
            List<Integer> deleteList = oldList.stream().filter(item -> !complicationItems.contains(item)).map(DiagnosisComplicationItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                diagnosisComplicationItemMapper.deleteByIds(deleteList);
            for (DiagnosisComplicationItem entry : complicationItems) {
                entry.setDiagnosisId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    diagnosisComplicationItemMapper.updateEntry(entry);
                } else {
                    diagnosisComplicationItemMapper.addEntry(entry);
                }
            }

        }
        List<DiagnosisIconographyItem> iconographyItems = diagnosisInfo.getDiagnosisIconographyItems();
        if (iconographyItems != null) {
            List<DiagnosisIconographyItem> oldList = diagnosisIconographyItemMapper.listByDiagnosisId(id);
            List<Integer> deleteList = oldList.stream().filter(item -> !iconographyItems.contains(item)).map(DiagnosisIconographyItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                diagnosisIconographyItemMapper.deleteByIds(deleteList);
            for (DiagnosisIconographyItem entry : iconographyItems) {
                entry.setDiagnosisId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    diagnosisIconographyItemMapper.updateEntry(entry);
                } else {
                    diagnosisIconographyItemMapper.addEntry(entry);
                }
            }
        }
        List<DiagnosisPlasmacyteItem> plasmacyteItems = diagnosisInfo.getDiagnosisPlasmacyteItems();
        if (plasmacyteItems != null) {
            List<DiagnosisPlasmacyteItem> oldList = diagnosisPlasmacyteItemMapper.listByDiagnosisId(id);
            List<Integer> deleteList = oldList.stream().filter(item -> !plasmacyteItems.contains(item)).map(DiagnosisPlasmacyteItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                diagnosisPlasmacyteItemMapper.deleteByIds(deleteList);
            for (DiagnosisPlasmacyteItem entry : plasmacyteItems) {
                entry.setDiagnosisId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    diagnosisPlasmacyteItemMapper.updateEntry(entry);
                } else {
                    diagnosisPlasmacyteItemMapper.addEntry(entry);
                }
            }
        }
        List<DiagnosisParenchymaItem> parenchymaItems = diagnosisInfo.getDiagnosisParenchymaItems();
        if (parenchymaItems != null) {

            List<DiagnosisParenchymaItem> oldList = diagnosisParenchymaItemMapper.listByDiagnosisId(id);
            List<Integer> deleteList = oldList.stream().filter(item -> !parenchymaItems.contains(item)).map(DiagnosisParenchymaItem::getId).collect(Collectors.toList());
            if (deleteList.size() > 0)
                diagnosisParenchymaItemMapper.deleteByIds(deleteList);
            for (DiagnosisParenchymaItem entry : parenchymaItems) {
                entry.setDiagnosisId(id);
                entry.setUpdateDate(new Date());
                if (entry.getId() > 0) {
                    entry.setCreateDate(new Date());
                    diagnosisParenchymaItemMapper.updateEntry(entry);
                } else {
                    diagnosisParenchymaItemMapper.addEntry(entry);
                }
            }

        }

        if (diagnosisInfo.getDiagnosisFishStatus() == 1 && diagnosisInfo.getDiagnosisFishItems() != null) {
            List<DiagnosisFishItem> fishItems = diagnosisInfo.getDiagnosisFishItems();
            if (fishItems != null) {

                List<DiagnosisFishItem> oldList = diagnosisFishItemMapper.listByDiagnosisId(id);
                List<Integer> deleteList = oldList.stream().filter(item -> !fishItems.contains(item)).map(DiagnosisFishItem::getId).collect(Collectors.toList());
                if (deleteList.size() > 0)
                    diagnosisFishItemMapper.deleteByIds(deleteList);
                for (DiagnosisFishItem entry : fishItems) {
                    entry.setUpdateDate(new Date());
                    entry.setDiagnosisId(id);
                    if (entry.getId() > 0) {
                        entry.setCreateDate(new Date());
                        diagnosisFishItemMapper.updateEntry(entry);
                    } else {
                        diagnosisFishItemMapper.addEntry(entry);
                    }
                }
            }
            
        }
    }

}

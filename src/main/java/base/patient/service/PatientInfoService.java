package base.patient.service;

import base.patient.mapper.PatientContactInfoMapper;
import base.patient.mapper.PatientInfoMapper;
import base.patient.mapper.PatientInformedMapper;
import base.patient.model.*;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.lang.System;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by zyn on 11/17/16.
 */
@Service
public class PatientInfoService {

    @Autowired
    PatientInformedMapper patientInformedMapper;

    @Autowired
    PatientContactInfoMapper patientContactInfoMapper;

    @Autowired
    PatientInfoMapper patientInfoMapper;

    @Autowired
    DiagnosisInfoService diagnosisInfoService;

    @Autowired
    HospitaledInfoService hospitaledInfoService;

    @Autowired
    MmCureHistoryService mmCureHistoryService;

    @Autowired
    FollowupService followupService;

    public boolean isExist(String patientId) {
        return patientInfoMapper.countByPatientId(patientId) > 0;
    }

    public List<PatientInfo> listAll(String hospitalId) {
        return patientInfoMapper.listAll(hospitalId);
    }

    public PageInfo<PatientInfo> listPage(String hospitalIds,String query,int pageNum, int pageSize, String orderBy) {
         PageHelper.startPage(pageNum, pageSize);
        return new PageInfo<>(patientInfoMapper.queryAll(hospitalIds,query, orderBy));
    }

    public PatientInfo findByPatientId(String patientId,int hospitalId) {
        return patientInfoMapper.findByPatientId(patientId, hospitalId);
    }

    public PatientInfo findSimpleByPatientId(String patientId,int hospitalId) {
        return patientInfoMapper.findSimpleByPatientId(patientId, hospitalId);
    }

    @Transactional
    public int addPatientInfo(PatientInfo patientInfo,int confirm) {
        if (patientInfo.getDiagnosisInfo() != null) {
            int diagnosisInfoId = diagnosisInfoService.addDiagnosisInfo(patientInfo.getDiagnosisInfo());
            patientInfo.setFkdiagnosisid(diagnosisInfoId);
        }
        if (patientInfo.getFollowupInfo() != null) { //不太可能存在
            int followupInfoId = followupService.addFollowupInfo(patientInfo.getFollowupInfo());
            patientInfo.setFollowupid(followupInfoId);
            patientInfo.setFollowupStatus(1);
        }
        setUpDeathInfo(patientInfo);
        patientInfo.setCreateDate(new Date());
        patientInfo.setUpdateDate(new Date());
        if(confirm==1) {
            patientInfo.setAcquisitionStatus(2);
        } else {
            patientInfo.setAcquisitionStatus(1);
        }
        patientInfoMapper.addEntry(patientInfo);
        if (patientInfo.getMmCureHistories() != null) {
            mmCureHistoryService.addMmCureHistorys(patientInfo.getMmCureHistories(), patientInfo.getId());
        }
        if (patientInfo.getHospitaledInfos() != null) {
            hospitaledInfoService.addHospitaledInfos(patientInfo.getHospitaledInfos(), patientInfo.getId());
        }
        return patientInfo.getId();
    }
    @Transactional
    public int updateFollowup(PatientInfo patientInfo,int confirm) {
        PatientInfo old = patientInfoMapper.findSimpleByPatientId(patientInfo.getPatientId(),patientInfo.getFkhospitalid());
        if(old==null) return 0;
        patientInfo.setAcquisitionStatus(old.getAcquisitionStatus());
        patientInfo.setAgreementStatus(old.getAgreementStatus());
        patientInfo.setContactStatus(old.getContactStatus());
        FollowupInfo followupInfo = patientInfo.getFollowupInfo();
        DiagnosisInfo diagnosisInfo = patientInfo.getDiagnosisInfo();
        if (diagnosisInfo != null) {
            if (diagnosisInfo.getId() > 0) { //更新
                diagnosisInfoService.updateDiagnosisInfo(diagnosisInfo);
            } else { //新增
                diagnosisInfoService.addDiagnosisInfo(diagnosisInfo);
            }
            patientInfo.setFkdiagnosisid(diagnosisInfo.getId());
        }
        if (followupInfo != null) {
            if (followupInfo.getId() > 0) {
                followupService.updateFollowupInfo(followupInfo);
            } else {
                followupService.addFollowupInfo(followupInfo);
            }
            patientInfo.setFollowupid(followupInfo.getId());
            if(confirm==1) {
                patientInfo.setFollowupStatus(2);
            } else {
                patientInfo.setFollowupStatus(1);
            }
        }
        setUpDeathInfo(patientInfo);
        patientInfo.setUpdateDate(new Date());
        patientInfoMapper.updateEntry(patientInfo);
        return patientInfo.getId();
    }
    @Transactional
    public int updatePatientInfo(PatientInfo patientInfo,int confirm) {
        PatientInfo old = patientInfoMapper.findSimpleByPatientId(patientInfo.getPatientId(),patientInfo.getFkhospitalid());
        if(old==null) return 0;
        patientInfo.setAcquisitionStatus(old.getAcquisitionStatus());
        patientInfo.setAgreementStatus(old.getAgreementStatus());
        patientInfo.setContactStatus(old.getContactStatus());
        DiagnosisInfo diagnosisInfo = patientInfo.getDiagnosisInfo();
        if (diagnosisInfo != null) {
            if (diagnosisInfo.getId() > 0) { //更新
                diagnosisInfoService.updateDiagnosisInfo(diagnosisInfo);
            } else { //新增
                diagnosisInfoService.addDiagnosisInfo(diagnosisInfo);
            }
            patientInfo.setFkdiagnosisid(diagnosisInfo.getId());
        }
//        FollowupInfo followupInfo = patientInfo.getFollowupInfo();
//        if (followupInfo != null) {
//            if (followupInfo.getId() > 0) {
//                followupService.updateFollowupInfo(followupInfo);
//            } else {
//                followupService.addFollowupInfo(followupInfo);
//            }
//            patientInfo.setFollowupid(followupInfo.getId());
//            patientInfo.setFollowupStatus(2);
//        }
        setUpDeathInfo(patientInfo);
        patientInfo.setUpdateDate(new Date());
        if(confirm==1) {
            patientInfo.setAcquisitionStatus(2);
        } else {
            patientInfo.setAcquisitionStatus(1);
        }
        patientInfoMapper.updateEntry(patientInfo);
        if (patientInfo.getMmCureHistories() != null) {
            mmCureHistoryService.updateMmCureHistory(patientInfo.getMmCureHistories(), patientInfo.getId());
        }
        if (patientInfo.getHospitaledInfos() != null) {
            hospitaledInfoService.updateHospitaledInfos(patientInfo.getHospitaledInfos(), patientInfo.getId());
        }
        return patientInfo.getId();
    }

    public PatientContactInfo findPatientContactInfo(String patientId,int hospitalId) {
        return patientContactInfoMapper.findByPatientId(patientId,hospitalId);
    }

    public void updatePatientContactInfo(PatientContactInfo patientContactInfo,int confirm) {
        PatientContactInfo old = patientContactInfoMapper.findByPatientId(patientContactInfo.getPatientId(),patientContactInfo.getHospitalId());
        patientContactInfo.setUpdateDate(new Date());
        if(old==null) {
            //patientContactInfo.setCreateDate(new Date());
            patientContactInfoMapper.addEntry(patientContactInfo);
        } else {
            //patientContactInfo.setCreateDate(old.getCreateDate());
            if(old.getCreateDate()==null)
                patientContactInfo.setCreateDate(new Date());
            patientContactInfoMapper.updateEntry(patientContactInfo);
            if(old.getLivingState()==2&&patientContactInfo.getLivingState()==1) {//已死亡=>未死亡
                patientInfoMapper.setAgreementStatus(patientContactInfo.getPatientId(),1);//未开始
                patientInfoMapper.setFollowupStatus(patientContactInfo.getPatientId(),1);//未开始
            }
            if(old.getAgreeVisit()==2&&patientContactInfo.getLivingState()==1) {//拒绝=>同意
                patientInfoMapper.setAgreementStatus(patientContactInfo.getPatientId(),1);//未开始
                patientInfoMapper.setFollowupStatus(patientContactInfo.getPatientId(),1);//未开始
            }
        }
        if(confirm==1) {
            if(patientContactInfo.getLivingState()==2||patientContactInfo.getAgreeVisit()==2) { //已死亡/已拒绝
                patientInfoMapper.setAgreementStatus(patientContactInfo.getPatientId(),4);//不适用
                patientInfoMapper.setFollowupStatus(patientContactInfo.getPatientId(),3);//不适用
            }
            if(patientContactInfo.getLivingState()==2) {
                patientInfoMapper.setContactStatus(patientContactInfo.getPatientId(),3);//已死亡
            } else {
                patientInfoMapper.setContactStatus(patientContactInfo.getPatientId(),2);//已完成
            }
        } else {
            patientInfoMapper.setContactStatus(patientContactInfo.getPatientId(),1);//未完成
        }
    }

    public PatientInformed findPatientInformed(String patientId,int hospitalId) {
        return patientInformedMapper.findByPatientId(patientId,hospitalId);
    }
    public void updatePatientInformed(PatientInformed patientInformed,int confirm) {
        PatientInformed old = patientInformedMapper.findByPatientId(patientInformed.getPatientId(),patientInformed.getHospitalId());
        patientInformed.setUpdateDate(new Date());
        if(old==null) {
            patientInformed.setCreateDate(new Date());
            patientInformedMapper.addEntry(patientInformed);
        } else {
            patientInformed.setCreateDate(old.getCreateDate());
            if(old.getCreateDate()==null)
                patientInformed.setCreateDate(new Date());
            patientInformedMapper.updateEntry(patientInformed);
        }
        if(confirm==1) {
            patientInfoMapper.setAgreementStatus(patientInformed.getPatientId(),patientInformed.getAgreeInformedConsentStatus());
        } else {
            patientInfoMapper.setAgreementStatus(patientInformed.getPatientId(),1);
        }
    }
    private void setUpDeathInfo(PatientInfo patientInfo) {
        if(patientInfo.getHospitaledInfos()!=null) {
            for(HospitaledInfo hospitaledInfo:patientInfo.getHospitaledInfos()) {
                if(hospitaledInfo.getLivingState()==2) {
                    patientInfo.setLivingState(2);
                    patientInfo.setDeathTime(hospitaledInfo.getDeathDate());
                    patientInfo.setDeathReason(hospitaledInfo.getDeathReason());
                    break;
                }
            }
            patientInfo.setAcquisitionStatus(2);
        }
        if(patientInfo.getLivingState()==2) {//已死亡
            patientInfo.setContactStatus(3);//已死亡
            patientInfo.setFollowupStatus(3);//不适用
        } else {
            patientInfo.setLivingState(1);
        }
    }
}

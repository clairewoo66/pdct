package base.patient.service;

import base.patient.mapper.MmCureHistoryMapper;
import base.patient.model.MmCureHistory;
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
public class MmCureHistoryService {
    @Autowired
    MmCureHistoryMapper mmCureHistoryMapper;

    @Transactional
    public void addMmCureHistorys(List<MmCureHistory> mmCureHistories, int patientId) {
        if (mmCureHistories != null) {
            for (MmCureHistory mmCureHistory : mmCureHistories) {
                mmCureHistory.setPatientId(patientId);
                mmCureHistoryMapper.addEntry(mmCureHistory);
            }
        }
    }

    @Transactional
    public void updateMmCureHistory(List<MmCureHistory> mmCureHistories, int patientId) {
        System.out.println("****************1*********");
        List<MmCureHistory> oldList = mmCureHistoryMapper.listByPatientInfo(patientId);
        System.out.println("****************２*********");
        List<Integer> deleteList = oldList.stream().filter(item->!mmCureHistories.contains(item)).map(MmCureHistory::getId).collect(Collectors.toList());
        System.out.println("****************３*********");
        if(deleteList.size()>0)
            mmCureHistoryMapper.deleteByIds(deleteList);
        for (MmCureHistory mmCureHistory : mmCureHistories) {
            mmCureHistory.setPatientId(patientId);
            mmCureHistory.setUpdateDate(new Date());
            System.out.println("****************４*********");
            if (mmCureHistory.getId() > 0) { //update
                System.out.println("****************５*********");
                mmCureHistoryMapper.updateEntry(mmCureHistory);
            } else {
                System.out.println("****************６*********");
                mmCureHistory.setCreateDate(new Date());
                mmCureHistoryMapper.addEntry(mmCureHistory);
            }
        }
        System.out.println("****************７*********");
    }
}

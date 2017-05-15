package system;

import base.Application;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by zyn on 11/1/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = Application.class)
public class PatientTest {
    /*@Autowired
    PatientInfoService patientInfoService;
    @Test
    public void testInsert() {
        PatientInfo patientInfo = new PatientInfo();
        patientInfo.setPatientId("test3");
        patientInfo.setFollowupid(0);
        //patientInfo.setAdmissionNumber("test2");
        patientInfo.setBirthday("1970-01-01");
        patientInfo.setInsuranceType(0);
        DiagnosisInfo diagnosisInfo = new DiagnosisInfo();
        ImmunoglobulinCheckResult blood = new ImmunoglobulinCheckResult();
        blood.setIgA(10);
        blood.setIgG(10);
        blood.setIgM(10);
        diagnosisInfo.setBloodResult(blood);
        diagnosisInfo.setUrineResult(blood);
        List<IconographyItem> iconographyItems = new ArrayList<>();
        IconographyItem test1 = new IconographyItem();
        test1.setItem("X光");
        test1.setCheckTime("10-20");
        test1.setCount("fdsfds");
        test1.setPosition("位置");
        iconographyItems.add(test1);
        IconographyItem test2 = new IconographyItem();
        test2.setItem("CT");
        test2.setCheckTime("10-20");
        test2.setCount("fdsfds");
        test2.setPosition("位置");
        iconographyItems.add(test2);
        diagnosisInfo.setIconographyResult(iconographyItems);
        patientInfo.setDiagnosisInfo(diagnosisInfo);
        List<CureHistory> cureHistories = new ArrayList<>();
        CureHistory cureHistory = new CureHistory();
        cureHistory.setCurePlan("plan");
        cureHistory.setIndex(1);
        cureHistory.setStartMonth(10);
        cureHistory.setStartYear(1992);
        cureHistories.add(cureHistory);
        patientInfo.setCureHistories(cureHistories);
        HospitaledInfo hospitaledInfo = new HospitaledInfo();
        UrineMResult urineMResult = new UrineMResult();
        hospitaledInfo.setUrineM(urineMResult);
        SerumMResult serumMResult = new SerumMResult();
        hospitaledInfo.setSerumM(serumMResult);
        List<HospitaledInfo> hospitaledInfos = new ArrayList<>();
        hospitaledInfos.add(hospitaledInfo);
        patientInfo.setHospitaledInfos(hospitaledInfos);
        patientInfoService.addPatientInfo(patientInfo);
    }

    @Test
    public void testUpdate() {
        PatientInfo patientInfo = patientInfoService.findByAdmissionNumber("test2");
        IconographyItem test2 = new IconographyItem();
        test2.setItem("其他");
        test2.setCheckTime("10-20");
        test2.setCount("fdsfds");
        test2.setPosition("位置");
        patientInfo.getDiagnosisInfo().getIconographyResult().add(test2);
        patientInfoService.updatePatientInfo(patientInfo);
        System.out.println();
    }*/

}

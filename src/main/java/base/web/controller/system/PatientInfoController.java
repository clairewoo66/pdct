package base.web.controller.system;

import base.common.model.User;
import base.common.service.LogService;
import base.core.controller.BaseController;
import base.core.controller.BaseWebController;
import base.core.support.ActionResult;
import base.core.support.ConstVariable;
import base.patient.model.PatientContactInfo;
import base.patient.model.PatientInfo;
import base.patient.model.PatientInformed;
import base.patient.service.PatientInfoService;
import base.web.json.DataTablesResponse;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Collections;
import java.util.List;

/**
 * Created by zyn on 11/3/16.
 */
@RestController
@RequestMapping("/patient")
public class PatientInfoController implements ConstVariable {
    @Autowired
    PatientInfoService patientInfoService;
    @Autowired
    LogService logService;

    @RequestMapping(value = "/exist/{patientId}", method = RequestMethod.GET)
    public ActionResult<Void> checkExist(@PathVariable("patientId") String patientId) {
        boolean isExist = patientInfoService.isExist(patientId);
        if (isExist) return ActionResult.success();
        else return ActionResult.failure(HttpStatus.NO_CONTENT.value(), "");
    }

    @RequestMapping(value = "/contactInfo/{patientId}",method = RequestMethod.GET)
    public ActionResult<PatientContactInfo> getContactInfo(@PathVariable("patientId")String patientId,@RequestParam("hospitalId") int hospitalId) {
        PatientContactInfo patientContactInfo = patientInfoService.findPatientContactInfo(patientId,hospitalId);
        PatientInfo patientInfo = patientInfoService.findSimpleByPatientId(patientId,hospitalId);
        if(patientContactInfo==null) {
            patientContactInfo = new PatientContactInfo();
            if(patientInfo!=null) {
                patientContactInfo.setBirthday(patientInfo.getBirthday());
            }
            patientContactInfo.setHospitalId(hospitalId);
            patientContactInfo.setPatientId(patientId);
            return new ActionResult<>(false,HttpStatus.NO_CONTENT.value(),"",patientContactInfo);
        }
        if(patientInfo!=null) {
            patientContactInfo.setBirthday(patientInfo.getBirthday());
        }
        return new ActionResult<>(true,HttpStatus.NO_CONTENT.value(),"",patientContactInfo);
    }

    @RequestMapping(value = "/contactInfo",method = {RequestMethod.POST,RequestMethod.PUT})
    public ActionResult<Void> modifyContactInfo(@RequestBody PatientContactInfo contactInfo,@RequestParam("confirm") int confirm) {
        try {
            User user = (User)SecurityUtils.getSubject().getSession().getAttribute(SESSION_USER_VAR);
            if(user!=null) {
                contactInfo.setOperatorId(user.getId());
                contactInfo.setContactNurse(user.getName());
            }
            patientInfoService.updatePatientContactInfo(contactInfo,confirm);
            logService.addLog("更新病人(patientId="+contactInfo.getPatientId()+")的联系信息");
            return ActionResult.success();
        }catch (Exception e) {
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(),e.getMessage());
        }
    }
    @RequestMapping(value = "/informedInfo/{patientId}",method = RequestMethod.GET)
    public ActionResult<PatientInformed> getInformedInfo(@PathVariable("patientId")String patientId, @RequestParam("hospitalId") int hospitalId) {
        PatientInformed informed = patientInfoService.findPatientInformed(patientId,hospitalId);
        PatientInfo patientInfo = patientInfoService.findSimpleByPatientId(patientId,hospitalId);
        if(informed==null) {
            informed = new PatientInformed();
            informed.setHospitalId(hospitalId);
            informed.setPatientId(patientId);
            if(patientInfo!=null) {
                informed.setBirthday(patientInfo.getBirthday());
            }
            return new ActionResult<>(false,HttpStatus.NO_CONTENT.value(),"",informed);
        }
        if(patientInfo!=null) {
            informed.setBirthday(patientInfo.getBirthday());
        }
        return new ActionResult<>(true,HttpStatus.NO_CONTENT.value(),"",informed);
    }

    @RequestMapping(value = "/informedInfo",method = {RequestMethod.POST,RequestMethod.PUT})
    public ActionResult<Void> modifyInformedInfo(@RequestBody PatientInformed informed,@RequestParam("confirm") int confirm) {
        try {
            User user = (User)SecurityUtils.getSubject().getSession().getAttribute(SESSION_USER_VAR);
            if(user!=null) {
                informed.setContactNurse(user.getName());
                informed.setOperatorId(user.getId());
            }
            patientInfoService.updatePatientInformed(informed,confirm);
            logService.addLog("更新病人(patientId="+informed.getPatientId()+")的知情同意书状态");
            return ActionResult.success();
        }catch (Exception e) {
            return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(),e.getMessage());
        }
    }
    @RequestMapping(value = "/simpleInfo/{patientId}", method = RequestMethod.GET)
    public ActionResult<PatientInfo> getSimpleInfo(@PathVariable("patientId") String patientId, @RequestParam("hospitalId") int hospitalId) {
        PatientInfo patientInfo = patientInfoService.findSimpleByPatientId(patientId,hospitalId);
        if(patientInfo==null) {
            return new ActionResult<>(false,HttpStatus.NO_CONTENT.value(), "",null);
        }
        return new ActionResult(true,HttpStatus.NO_CONTENT.value(), "",patientInfo);
    }

    @RequestMapping(value = "/simpleInfo",method = RequestMethod.GET)
    public ActionResult<List<PatientInfo>> listSimpleInfo(@Param("hospitalId") String hospitalId) {
        if(hospitalId.equals("")) {
            hospitalId=null;
        }
        List<PatientInfo> patientInfos = patientInfoService.listAll(hospitalId);
        if(patientInfos==null) {
            return new ActionResult<>(false,HttpStatus.NO_CONTENT.value(), "", Collections.emptyList());
        }
        return new ActionResult(true,HttpStatus.NO_CONTENT.value(), "",patientInfos);
    }

    @RequestMapping(value = "/dataTablesList",method = RequestMethod.GET)
    public DataTablesResponse<PatientInfo> dataTablesList(@RequestParam("hospitalId") String hospitalId, HttpServletRequest request) {
        String sEcho = request.getParameter("sEcho");
        int iDisplayStart = Integer.parseInt(request.getParameter("iDisplayStart"));
        int iDisplayLength = Integer.parseInt(request.getParameter("iDisplayLength"));
        String orderCol = request.getParameter("iSortCol_0");
        String orderBy = "id asc";
        if(orderCol!=null) {
            int iSortCol_0 = Integer.parseInt(orderCol);
            String sSortDir_0 = request.getParameter("sSortDir_0");
            switch (iSortCol_0) {
                case 1:
                    orderBy = "patientId "+sSortDir_0;
                    break;
                case 2:
                    orderBy = "acquisitionStatus "+sSortDir_0;
                    break;
                case 3:
                    orderBy = "contactStatus "+sSortDir_0;
                    break;
                case 4:
                    orderBy = "agreementStatus "+sSortDir_0;
                    break;
                case 5:
                    orderBy = "followupStatus "+sSortDir_0;
                    break;
            }
        }

        String sSearch = request.getParameter("sSearch");
        if(sSearch!=null) {
            sSearch = "%"+sSearch+"%";
        }
        PageInfo<PatientInfo> patientInfoPageInfo = patientInfoService.listPage(hospitalId,sSearch,(iDisplayStart+iDisplayLength)/iDisplayLength,iDisplayLength,orderBy);
        DataTablesResponse<PatientInfo> dataTablesResponse = new DataTablesResponse<>();
        dataTablesResponse.setAaData(patientInfoPageInfo.getList());
        dataTablesResponse.setiTotalRecords(patientInfoPageInfo.getTotal());
        dataTablesResponse.setiTotalDisplayRecords(patientInfoPageInfo.getTotal());
        dataTablesResponse.setsEcho(sEcho);
        return dataTablesResponse;
    }

    @RequestMapping(value = "/{patientId}", method = RequestMethod.GET)
    public ActionResult<PatientInfo> getPatientInfo(@PathVariable("patientId") String patientId, @RequestParam("hospitalId") int hospitalId) {
        PatientInfo patientInfo;
        try {
            patientInfo = patientInfoService.findByPatientId(patientId,hospitalId);
        } catch (Exception e) {
            e.printStackTrace();
            patientInfo = new PatientInfo();
            patientInfo.setPatientId(patientId);
            patientInfo.setFkhospitalid(hospitalId);
        }
        if (patientInfo == null) {
            patientInfo = new PatientInfo();
            patientInfo.setPatientId(patientId);
            patientInfo.setFkhospitalid(hospitalId);
        }
        return new ActionResult<>(true, HttpStatus.OK.value(), "", patientInfo);
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public ActionResult<PatientInfo> modifyPatientInfo(@RequestBody PatientInfo patientInfo,@RequestParam("confirm") int confirm) {
        User user = (User)SecurityUtils.getSubject().getSession().getAttribute(SESSION_USER_VAR);
        if(user!=null) {
            patientInfo.setGathererId(user.getId());
            patientInfo.setGathererName(user.getName());
        }
        if (patientInfo.getId() > 0) { //update
            try {
                int id = patientInfoService.updatePatientInfo(patientInfo,confirm);
                logService.addLog("更新病人(patientId="+patientInfo.getPatientId()+")的回顾性数据采集信息");
                return new ActionResult<>(true, HttpStatus.OK.value(), "" + id, patientInfo);
            } catch (Exception e) {
                e.printStackTrace();
                return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "更新失败");
            }
        } else { // add
            PatientInfo oldPatientInfo = patientInfoService.findByPatientId(patientInfo.getPatientId(),patientInfo.getFkhospitalid());
            if (oldPatientInfo!=null) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "已经存在数据");
            try {
                int id = patientInfoService.addPatientInfo(patientInfo,confirm);
                logService.addLog("新增病人(patientId="+patientInfo.getPatientId()+")的回顾性数据采集信息");
                return new ActionResult<>(true, HttpStatus.OK.value(), "" + id, patientInfo);
            } catch (Exception e) {
                e.printStackTrace();
                return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "添加失败");
            }
        }
    }

    @RequestMapping(value = "/followup", method = RequestMethod.POST)
    public ActionResult<PatientInfo> modifyFollowupInfo(@RequestBody PatientInfo patientInfo,@RequestParam("confirm") int confirm) {
        User user = (User)SecurityUtils.getSubject().getSession().getAttribute(SESSION_USER_VAR);
        if(user!=null) {
            patientInfo.setGathererId(user.getId());
            patientInfo.setGathererName(user.getName());
        }
        if (patientInfo.getId() > 0) { //update
            try {
                int id = patientInfoService.updateFollowup(patientInfo,confirm);
                logService.addLog("更新病人(patientId="+patientInfo.getPatientId()+")的随访信息");
                return new ActionResult<>(true, HttpStatus.OK.value(), "" + id, patientInfo);
            } catch (Exception e) {
                e.printStackTrace();
                return ActionResult.failure(HttpStatus.INTERNAL_SERVER_ERROR.value(), "更新失败");
            }
        }
        return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "添加失败");
    }
}

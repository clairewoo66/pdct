package base.web.controller.common;

import base.common.service.HospitalService;
import base.core.controller.BaseWebController;
import base.core.support.ActionResult;
import base.patient.model.Hospital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/hospital")
public class HospitalController extends BaseWebController<Hospital> {

    @Autowired
    public HospitalController(HospitalService hospitalService) {
        super(hospitalService);
    }

    @RequestMapping("/listByIds")
    public ActionResult<List<Hospital>> listByIds(@RequestParam("ids") String ids) {
        List<Hospital> hospitals = ((HospitalService) service).listByIds(ids);
        return new ActionResult<>(true, 200, "", hospitals);
    }
}

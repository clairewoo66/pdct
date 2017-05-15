package base.common.service;

import base.common.mapper.UserMapper;
import base.common.model.User;
import base.core.service.BaseService;
import base.core.support.ActionResult;
import base.core.util.AuthUtl;
import base.patient.mapper.HospitalMapper;
import base.patient.model.Hospital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;

/**
 * Created by zyn on 9/4/16.
 */
@Service
public class HospitalService extends BaseService<Hospital> {
    @Autowired
    public HospitalService(HospitalMapper hospitalMapper) {
        super(hospitalMapper);
    }

    public boolean isExist(Hospital hospital) {
        return !findByField("code", hospital.getCode()).isEmpty();
    }

    public List<Hospital> listByIds(String ids) {
        if(ids==null||ids.length()==0) return Collections.emptyList();
        return ((HospitalMapper)mapper).findByIds(ids);
    }

    @Override
    public ActionResult<Void> addEntry(Hospital entry) {
        if (isExist(entry)) {
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "医院名称重复");
        }
        if (entry.getName() == null || entry.getName().length() == 0)
        {
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "医院名称不能为空");
        }
        return super.addEntry(entry);
    }

    @Override
    public ActionResult<Void> updateEntry(Hospital entry) {
        if (entry.getId() <= 0) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "必须指的更新医院的id");
        Hospital old = mapper.findById(entry.getId());
        if (old == null) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "找不到医院");
        if (!old.getCode().equals(entry.getCode()) && isExist(entry)) {
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "医院编码重复");
        }
        //entry.setCode(old.getCode());
        return super.updateEntry(entry);
    }
}

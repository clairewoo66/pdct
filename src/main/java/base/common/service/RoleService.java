package base.common.service;

import base.common.mapper.PermissionMapper;
import base.common.mapper.RoleMapper;
import base.common.model.Permission;
import base.common.model.Role;
import base.core.service.BaseService;
import base.core.support.ActionResult;
import base.patient.mapper.HospitalMapper;
import base.patient.model.Hospital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zyn on 9/11/16.
 */
@Service
public class RoleService extends BaseService<Role> {
    @Autowired
    PermissionMapper permissionMapper;
    @Autowired
    public RoleService(RoleMapper mapper) {
        super(mapper);
    }

    @Override
    public boolean isExist(Role entry) {
        return !mapper.findByField("name", entry.getName(), "id").isEmpty();
    }

    @Override
    public ActionResult<Void> addEntry(Role entry) {
        if (isExist(entry)) {
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "添加失败:角色名重复");
        }
        return super.addEntry(entry);
    }

    @Override
    public ActionResult<Void> updateEntry(Role entry) {
        if (entry.getId() <= 0) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "更新失败:必须指的更新角色的id");
        Role old = mapper.findById(entry.getId());
        if (old == null) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "更新失败:找不到角色");
        if(old.getBuiltIn()==1) return ActionResult.failure(HttpStatus.BAD_REQUEST.value(),"无法修改内建角色");
        if (!old.getName().equals(entry.getName()) && isExist(entry)) {
            return ActionResult.failure(HttpStatus.BAD_REQUEST.value(), "更新失败:角色名重复");
        }
        return super.updateEntry(entry);
    }

    public List<Permission> findPermissionByRole(int roleId) {
        return permissionMapper.findByRole(roleId);
    }
}

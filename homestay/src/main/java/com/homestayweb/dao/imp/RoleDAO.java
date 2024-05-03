package com.homestayweb.dao.imp;

import com.homestayweb.mapper.RoleMapper;
import com.homestayweb.mapper.RoomMapper;
import com.homestayweb.model.RoleModel;

import javax.management.relation.Role;
import java.util.List;

public class RoleDAO extends AbstractDAO<RoleModel> implements IRoleDAO{


    @Override
    public RoleModel findOne(Integer id) {
        String sql = "SELECT * FROM role WHERE id = ?";
        List<RoleModel> role = query(sql, new RoleMapper(), id);
        return role.isEmpty() ? null : role.get(0);
    }
    @Override
    public List<RoleModel> findByCode(String code) {
        String sql = "SELECT * FROM role WHERE code = ?";
        return query(sql, new RoleMapper(), code);
    }
}

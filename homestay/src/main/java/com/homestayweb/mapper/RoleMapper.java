package com.homestayweb.mapper;

import com.homestayweb.model.RoleModel;
import com.homestayweb.model.UserModel;

import javax.management.relation.Role;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RoleMapper implements RowMapper<RoleModel> {
    @Override
    public RoleModel mapRow(ResultSet resultSet) {
        try {
            RoleModel roleModel = new RoleModel();
            roleModel.setId(resultSet.getInt("id"));
            roleModel.setName(resultSet.getString("name"));
            roleModel.setCode(resultSet.getString("code"));
            return roleModel;
        } catch (SQLException e) {
            return null;
        }
    }
}



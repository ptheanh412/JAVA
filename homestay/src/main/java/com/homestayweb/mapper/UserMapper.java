package com.homestayweb.mapper;

import com.homestayweb.model.RoleModel;
import com.homestayweb.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel>{
    @Override
    public UserModel mapRow(ResultSet resultSet) {
        try {
            UserModel userModel = new UserModel();
            userModel.setId(resultSet.getInt("id"));
            userModel.setUserName(resultSet.getString("username"));
            userModel.setPassword(resultSet.getString("password"));
            userModel.setEmail(resultSet.getString("email"));
            userModel.setPhone(resultSet.getString("phone"));
            userModel.setRole_id((resultSet.getInt("role_id")));
            userModel.setCreatedDate(resultSet.getTimestamp("createdDate"));
            userModel.setCreatedBy(resultSet.getString("createdBy"));
            try{
                RoleModel role = new RoleModel();
                role.setCode(resultSet.getString("code"));
                role.setName(resultSet.getString("name"));
                userModel.setRole(role);
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
            if(resultSet.getTimestamp("modifiedDate") != null){
                userModel.setModifiedDate(resultSet.getTimestamp("modifiedDate"));
            }
            if(resultSet.getString("modifiedBy") != null){
                userModel.setModifiedBy(resultSet.getString("modifiedBy"));
            }
            return userModel;
        } catch (SQLException e) {
            return  null;
        }
    }
}

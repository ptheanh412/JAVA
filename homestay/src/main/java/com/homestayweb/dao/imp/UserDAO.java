package com.homestayweb.dao.imp;

import com.homestayweb.dao.IUserDAO;
import com.homestayweb.mapper.RoomMapper;
import com.homestayweb.mapper.UserMapper;
import com.homestayweb.model.RoomModel;
import com.homestayweb.model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPassword(String userName, String password) {
        StringBuilder sql = new StringBuilder("SELECT * FROM user AS u");
        sql.append(" INNER JOIN role AS r ON r.id = u.role_id");
        sql.append(" WHERE username = ? AND password = ?");
        List<UserModel> user = query(sql.toString(), new UserMapper(), userName, password);
        return user.isEmpty() ? null : user.get(0);
    }

    @Override
    public UserModel findOne(Integer id) {
        String sql = "SELECT * FROM user where id = ?";
        List<UserModel> userModels = query(sql, new UserMapper(), id);
        return userModels.isEmpty() ? null : userModels.get(0);
    }

//    @Override
//    public List<UserModel> save() {
//        String sql = "INSERT INTO users (username, password, email, phone) VALUES (?, ?, ?, ?)";
//        return query(sql, new UserMapper());
//    }

    @Override
    public Integer save(UserModel userModel) {
        String sql = "INSERT INTO user (username, password, email, phone, role_id) VALUES (?, ?, ?, ?, ?)";
        return insert(sql, userModel.getUserName(), userModel.getPassword(), userModel.getEmail(), userModel.getPhone(), userModel.getRole_id());
    }


}

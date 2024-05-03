package com.homestayweb.dao;

import com.homestayweb.model.RoomModel;
import com.homestayweb.model.UserModel;

import java.util.List;

public interface IUserDAO extends GenericDAO<UserModel> {
    UserModel findByUserNameAndPassword(String userName, String password);
    UserModel findOne(Integer id);
//    List<UserModel> save();
    Integer save(UserModel userModel);

}

package com.homestayweb.service;

import com.homestayweb.model.UserModel;

import java.util.List;

public interface IUserService {
    UserModel findByUserNameAndPassword(String userName, String password);
//    List<UserModel> save();
    UserModel save(UserModel userModel);

}

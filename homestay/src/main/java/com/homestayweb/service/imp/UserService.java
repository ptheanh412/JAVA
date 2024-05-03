package com.homestayweb.service.imp;

import com.homestayweb.dao.IUserDAO;
import com.homestayweb.dao.imp.IRoleDAO;
import com.homestayweb.model.CategoryModel;
import com.homestayweb.model.RoleModel;
import com.homestayweb.service.IUserService;
import com.homestayweb.model.UserModel;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class UserService implements IUserService {
    @Inject
    private IUserDAO userDAO;
    @Inject
    private IRoleDAO roleDAO;
    @Override
    public UserModel findByUserNameAndPassword(String userName, String password) {

        return userDAO.findByUserNameAndPassword(userName,password);
    }

//    @Override
////    public List<UserModel> save() {
////        return userDAO.save();
////    }

    @Override
    public UserModel save(UserModel userModel) {
        List<RoleModel> userRole = roleDAO.findByCode("USER");
        userModel.setRole(userRole.isEmpty() ? null : userRole.get(0));
        Integer userID = userDAO.save(userModel);
        return userDAO.findOne(userID);
    }
}

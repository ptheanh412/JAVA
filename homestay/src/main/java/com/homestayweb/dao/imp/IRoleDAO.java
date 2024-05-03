package com.homestayweb.dao.imp;

import com.homestayweb.dao.GenericDAO;
import com.homestayweb.model.RoleModel;

import java.util.List;

public interface IRoleDAO extends GenericDAO<RoleModel> {
    RoleModel findOne(Integer id);
    List<RoleModel> findByCode(String code);
}

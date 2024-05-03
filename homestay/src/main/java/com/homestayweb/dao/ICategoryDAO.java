package com.homestayweb.dao;

import java.util.List;

import com.homestayweb.model.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel> {
	List <CategoryModel> findAll();
	CategoryModel findOne(Integer id);
	CategoryModel findOneByCode(String code);

}

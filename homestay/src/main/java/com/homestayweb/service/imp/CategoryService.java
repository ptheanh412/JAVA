package com.homestayweb.service.imp;

import java.util.List;

import javax.inject.Inject;

import com.homestayweb.dao.ICategoryDAO;
import com.homestayweb.service.ICategoryService;
import com.homestayweb.model.CategoryModel;

public class CategoryService implements ICategoryService {
	@Inject
	private ICategoryDAO categoryDAO;
	@Override
	public List<CategoryModel> findAll() {
		return categoryDAO.findAll();
	}



}

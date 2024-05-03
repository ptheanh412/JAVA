package com.homestayweb.dao.imp;

import java.util.List;

import com.homestayweb.dao.ICategoryDAO;
import com.homestayweb.mapper.CategoryMapper;
import com.homestayweb.model.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM category ";
		return query(sql,new CategoryMapper());
	}

	@Override
	public CategoryModel findOne(Integer id) {
		String sql = "SELECT * FROM category WHERE id = ?";
		List<CategoryModel> categoryModels = query(sql,new CategoryMapper(), id);
		return categoryModels.isEmpty() ? null: categoryModels.get(0);
	}

	@Override
	public CategoryModel findOneByCode(String code) {
		String sql = "SELECT * FROM category WHERE code = ?";
		List<CategoryModel> categoryModels = query(sql,new CategoryMapper(), code);
		return categoryModels.isEmpty() ? null: categoryModels.get(0);
	}

}

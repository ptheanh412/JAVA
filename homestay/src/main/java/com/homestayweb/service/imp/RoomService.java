package com.homestayweb.service.imp;

import com.homestayweb.dao.ICategoryDAO;
import com.homestayweb.dao.IRoomDAO;
import com.homestayweb.model.CategoryModel;
import com.homestayweb.paging.Pageble;
import com.homestayweb.service.IRoomService;
import com.homestayweb.model.RoomModel;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class RoomService implements IRoomService {

    @Inject
    private IRoomDAO roomDao;
    @Inject
    ICategoryDAO categoryDAO;

    @Override
    public List<RoomModel> findByCategoryID(Integer category_id) {
        return roomDao.findByCategoryID(category_id);
    }

    @Override
    public RoomModel save(RoomModel roomModel) {
        roomModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        CategoryModel categoryModel = categoryDAO.findOneByCode(roomModel.getCategoryCode());
        roomModel.setCategory_id(categoryModel.getId());
        Integer roomId = roomDao.save(roomModel);
        return roomDao.findOne(roomId);
    }

    @Override
    public RoomModel update(RoomModel updateRoom) {
        RoomModel oldRoom = roomDao.findOne(updateRoom.getId());
        updateRoom.setCreatedDate((oldRoom.getCreatedDate()));
        updateRoom.setCreatedBy(oldRoom.getCreatedBy());
        updateRoom.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        CategoryModel categoryModel = categoryDAO.findOneByCode(updateRoom.getCategoryCode());
        updateRoom.setCategory_id(categoryModel.getId());
        roomDao.update(updateRoom);
        return roomDao.findOne(updateRoom.getId());
    }

    @Override
    public void delete(Integer[] ids) {
        for(Integer id: ids){
            roomDao.delete(id);
        }
    }

    @Override
    public List<RoomModel> findAll(Pageble pageble) {
        return roomDao.findAll(pageble);
    }

    @Override
    public int getTotalItem() {
        return roomDao.getTotalItem();
    }

    @Override
    public RoomModel findOne(Integer id) {
        RoomModel roomModel = roomDao.findOne(id);
        if (roomModel != null && roomModel.getCategory_id() != null) {
            CategoryModel categoryModel = categoryDAO.findOne(roomModel.getCategory_id());
            if (categoryModel != null) {
                roomModel.setCategoryCode(categoryModel.getCode());
            }
        }
        return roomModel;
    }

    @Override
    public List<RoomModel> findRoomTrend() {
        return roomDao.findRoomTrend();
    }

    @Override
    public List<RoomModel> findRoomPopular() {
        return roomDao.findRoomPopular();
    }

    @Override
    public List<RoomModel> findAllRoom() {
        return roomDao.findAllRoom();
    }

    @Override
    public List<RoomModel> searchByKeyword(String keyword) {
        return roomDao.searchByKeyword(keyword);
    }
}

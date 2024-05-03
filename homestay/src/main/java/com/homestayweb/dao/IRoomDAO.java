package com.homestayweb.dao;

import com.homestayweb.paging.Pageble;
import com.homestayweb.model.RoomModel;

import java.util.List;

public interface IRoomDAO extends GenericDAO<RoomModel> {
    RoomModel findOne(Integer id);
    List<RoomModel> findByCategoryID(Integer category_id);
    Integer save(RoomModel roomModel);
    void update(RoomModel updateRoom);
    void delete(Integer id);
    List<RoomModel> findAll(Pageble pageble);
    List<RoomModel> findRoomTrend();
    List<RoomModel> findRoomPopular();

    List<RoomModel> findAllRoom();
    int getTotalItem();
    List<RoomModel> searchByKeyword(String keyword);

}

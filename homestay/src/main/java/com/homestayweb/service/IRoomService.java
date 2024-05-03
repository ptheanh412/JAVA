package com.homestayweb.service;

import com.homestayweb.paging.Pageble;
import com.homestayweb.model.RoomModel;

import java.util.List;

public interface IRoomService {
    List<RoomModel> findByCategoryID(Integer category_id);
    RoomModel save(RoomModel roomModel);
    RoomModel update(RoomModel updateRoom);
    void delete(Integer[] ids);
    List<RoomModel> findAll(Pageble pageble);
    int getTotalItem();
    RoomModel findOne(Integer id);
    List<RoomModel> findRoomTrend();
    List<RoomModel> findRoomPopular();
    List<RoomModel> findAllRoom();
    List<RoomModel> searchByKeyword(String keyword);
}

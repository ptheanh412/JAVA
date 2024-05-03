package com.homestayweb.mapper;

import com.homestayweb.model.RoomModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RoomMapper implements RowMapper<RoomModel> {
    @Override
    public RoomModel mapRow(ResultSet resultSet) {

        try {
            RoomModel rooms = new RoomModel();
            rooms.setId(resultSet.getInt("id"));
            rooms.setTitle(resultSet.getString("title"));
            rooms.setPrice(resultSet.getInt("price"));
            rooms.setAvailability(resultSet.getBoolean("availability"));
            rooms.setCategory_id(resultSet.getInt("category_id"));
            rooms.setHomestay_id((resultSet.getInt("homestay_id")));
            rooms.setAcreage(resultSet.getDouble("acreage"));
            rooms.setAmount_bed(resultSet.getInt("amount_bed"));
            rooms.setAmount_badroom(resultSet.getInt("amount_badroom"));
            rooms.setCapacity((resultSet.getInt("capacity")));
            rooms.setAmenities(resultSet.getString("amenities"));
            rooms.setTrend(resultSet.getBoolean("trend"));
            rooms.setPopular(resultSet.getBoolean("popular"));
            rooms.setImg(resultSet.getString("img"));
            rooms.setDescription(resultSet.getString("description"));
            rooms.setCreatedDate(resultSet.getTimestamp("createdDate"));
            rooms.setCreatedBy(resultSet.getString("createdBy"));
            if(resultSet.getTimestamp("modifiedDate") != null){
                rooms.setModifiedDate(resultSet.getTimestamp("modifiedDate"));
            }
            if(resultSet.getString("modifiedBy") != null){
                rooms.setModifiedBy(resultSet.getString("modifiedBy"));
            }
            return rooms;
        } catch (SQLException e) {
            return  null;
        }
    }
}

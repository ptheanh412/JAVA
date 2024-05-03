package com.homestayweb.dao.imp;

import com.homestayweb.dao.IRoomDAO;
import com.homestayweb.mapper.RoomMapper;
import com.homestayweb.paging.Pageble;
import com.homestayweb.model.RoomModel;
import org.apache.commons.lang.StringUtils;

import java.util.List;

public class RoomDAO extends AbstractDAO<RoomModel> implements IRoomDAO {


    @Override
    public RoomModel findOne(Integer id) {
        String sql = "SELECT * FROM room where id = ?";
        List<RoomModel> rooms = query(sql, new RoomMapper(), id);
        return rooms.isEmpty() ? null : rooms.get(0);
    }

    @Override
    public List<RoomModel> findByCategoryID(Integer category_id) {
        String sql = "SELECT * FROM room WHERE category_id = ?";
        return query(sql, new RoomMapper(), category_id);
    }

    @Override
    public Integer save(RoomModel roomModel) {
        StringBuilder sql = new StringBuilder("INSERT INTO room (title,price,");
        sql.append("availability, category_id, homestay_id, acreage, amount_bed, amount_badroom, capacity, amenities, description, img, ");
        sql.append("createdDate,createdBy)");
        sql.append("VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        return insert(sql.toString(), roomModel.getTitle(), roomModel.getPrice(), roomModel.getAvailability(), roomModel.getCategory_id(),
                roomModel.getHomestay_id(), roomModel.getAcreage(), roomModel.getAmount_bed(),
                roomModel.getAmount_badroom(), roomModel.getCapacity(), roomModel.getAmenities(), roomModel.getDescription(), roomModel.getImg(),
                roomModel.getCreatedDate(), roomModel.getCreatedBy());
    }

    @Override
    public void update(RoomModel updateRoom) {
        StringBuilder sql = new StringBuilder("UPDATE room SET title = ?, price = ?, ");
        sql.append("availability = ?, category_id = ?, homestay_id = ?, acreage = ?, ");
        sql.append("amount_bed = ?, amount_badroom = ?, capacity = ?, amenities = ?, description = ?, img = ?, ");
        sql.append("createdDate = ?, createdBy = ?, modifiedDate = ?, modifiedBy = ? WHERE id = ? ");
        update(sql.toString(), updateRoom.getTitle(), updateRoom.getPrice(), updateRoom.getAvailability(),
                updateRoom.getCategory_id(), updateRoom.getHomestay_id(), updateRoom.getAcreage(),
                updateRoom.getAmount_bed(), updateRoom.getAmount_badroom(), updateRoom.getCapacity(), updateRoom.getAmenities(), updateRoom.getDescription(), updateRoom.getImg(),
                updateRoom.getCreatedDate(), updateRoom.getCreatedBy(), updateRoom.getModifiedDate(), updateRoom.getModifiedBy(),
                updateRoom.getId());

    }

    @Override
    public void delete(Integer id) {
        String sql = "DELETE FROM room where id = ?";
        update(sql, id);
    }



    @Override
    public List<RoomModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM room ");
        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" ORDER BY "+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+" ");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null){
            sql.append(" LIMIT " + pageble.getOffset() +", " + pageble.getLimit() +" " );
        }
        return query(sql.toString(), new RoomMapper());
    }

    @Override
    public List<RoomModel> findRoomTrend() {
        String sql = "SELECT * FROM room WHERE trend = true";
        return query(sql, new RoomMapper());
    }

    @Override
    public List<RoomModel> findRoomPopular() {
        String sql = "SELECT * FROM room WHERE popular = true";
        return query(sql, new RoomMapper());
    }

    @Override
    public List<RoomModel> findAllRoom() {
        String sql = "SELECT * FROM room ";
        return query(sql, new RoomMapper());
    }

    @Override
    public int getTotalItem() {
        String sql= "SELECT count(*) from room ";
        return count(sql);
    }
    public List<RoomModel> searchByKeyword(String keyword) {
        String sql = "SELECT * FROM room WHERE ";
        String[] columnsToSearch = new String[]{"title", "description", "price", "capacity", "amenities"};

        StringBuilder whereClause = new StringBuilder();
        for (int i = 0; i < columnsToSearch.length; i++) {
            if (i != 0) {
                whereClause.append(" OR ");
            }
            whereClause.append(columnsToSearch[i]).append(" LIKE ?");
        }

        sql += whereClause.toString();

        String[] params = new String[columnsToSearch.length];
        for (int i = 0; i < columnsToSearch.length; i++) {
            params[i] = "%" + keyword + "%";
        }

        return query(sql, new RoomMapper(), params);
    }
}

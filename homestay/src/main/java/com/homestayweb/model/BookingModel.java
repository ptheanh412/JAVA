package com.homestayweb.model;

import java.sql.Date;

public class BookingModel extends AbstractModel<BookingModel> {
	private Integer user_id;
	private Integer homestay_id;
	private Date checkin;
	private Date checkout;
	private String status;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getHomestay_id() {
		return homestay_id;
	}
	public void setHomestay_id(Integer homestay_id) {
		this.homestay_id = homestay_id;
	}
	public Date getCheckin() {
		return checkin;
	}
	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}
	public Date getCheckout() {
		return checkout;
	}
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}

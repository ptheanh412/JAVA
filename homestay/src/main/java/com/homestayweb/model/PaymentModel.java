package com.homestayweb.model;

import java.sql.Date;

public class PaymentModel extends AbstractModel<PaymentModel> {
	private double amount;
	private Date date;
	private String status;
	private Integer booking_id;
	
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getBooking_id() {
		return booking_id;
	}
	public void setBooking_id(Integer booking_id) {
		this.booking_id = booking_id;
	}
	
	
}

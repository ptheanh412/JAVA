package com.homestayweb.model;

public class ReviewModel extends AbstractModel<ReviewModel> {
	private Integer user_id;
	private Integer homestay_id;
	private int rating;
	private String comment;
	
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
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
}

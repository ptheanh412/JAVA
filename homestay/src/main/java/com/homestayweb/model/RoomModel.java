package com.homestayweb.model;

public class RoomModel extends AbstractModel<RoomModel> {
	private String title;

	private int price;
	private boolean availability;
	private Integer category_id;
	private Integer homestay_id;
	private double acreage;
	private int amount_bed;
	private int amount_badroom;
	private int capacity;
	private String amenities;
	private String description;
	private String categoryCode;
	private boolean trend;
	private boolean popular;
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isPopular() {
		return popular;
	}

	public void setPopular(boolean popular) {
		this.popular = popular;
	}

	private String img;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public boolean isTrend() {
		return trend;
	}

	public void setTrend(boolean trend) {
		this.trend = trend;
	}



	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public boolean isAvailability() {
		return availability;
	}
	public void setAvailability(boolean availability) {
		this.availability = availability;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public Integer getHomestay_id() {
		return homestay_id;
	}
	public void setHomestay_id(Integer homestay_id) {
		this.homestay_id = homestay_id;
	}
	public double getAcreage() {
		return acreage;
	}
	public void setAcreage(double acreage) {
		this.acreage = acreage;
	}
	public int getAmount_bed() {
		return amount_bed;
	}
	public void setAmount_bed(int amount_bed) {
		this.amount_bed = amount_bed;
	}
	public int getAmount_badroom() {
		return amount_badroom;
	}
	public void setAmount_badroom(int amount_badroom) {
		this.amount_badroom = amount_badroom;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getAmenities() {
		return amenities;
	}
	public void setAmenities(String amenities) {
		this.amenities = amenities;
	}


	public boolean getAvailability() {
		return availability;
	}
}

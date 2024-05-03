package com.homestayweb.model;

public class HomestayModel extends AbstractModel<HomestayModel> {
	private String name;
	private String description;
	private Integer location_id;
	private Integer owner_id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getLocation() {
		return location_id;
	}
	public void setLocation(Integer location_id) {
		this.location_id = location_id;
	}
	public Integer getOwner_id() {
		return owner_id;
	}
	public void setOwner_id(Integer owner_id) {
		this.owner_id = owner_id;
	}
	
	
}

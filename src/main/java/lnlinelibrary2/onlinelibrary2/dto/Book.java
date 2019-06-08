package lnlinelibrary2.onlinelibrary2.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Book {

	//id, name, description, image_url, is_active
	@Id
	private int id;
	private String name;
	private String description;
	private String image_url;
	private boolean is_active;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public boolean isIs_active() {
		return is_active;
	}
	public void setIs_active(boolean is_active) {
		this.is_active = is_active;
	}
	
	
	
}

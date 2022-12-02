package dto;
import java.io.Serializable;

public class Shop implements Serializable {
	private String summary;//맛집 요약
	private String address;//맛집 주소
	private Integer price;
	private String shopName;
	private String description;
	private double grade;
	private String filename;

	public Shop(String summary, String address, Integer price) {
		this.summary=summary;
		this.address=address;
		this.price=price;
	}
	
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary=summary;
	}
	public String getAdress() {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price=price;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName=shopName;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description=description;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade=grade;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename=filename;
	}
}

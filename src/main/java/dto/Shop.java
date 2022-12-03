package dto;
import java.io.Serializable;

public class Shop implements Serializable {
	private String code;
	private String shopName;
	private Integer price;
	private String summary;//맛집 요약
	private String address;//맛집 주소
	private String description;
	private String category;
	private double grade;
	private String filename;

	public Shop() {
		super();
	}
	public Shop(String code,String shopName, Integer price) {
		this.code=code;
		this.shopName=shopName;
		this.price=price;
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code=code;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName=shopName;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price=price;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary=summary;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description=description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category=category;
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

package dao;

public class Product {

	private int productId;
	private String category;
	private	String productName ;
	private int price 	;	
	private String image;
	private String availibility;
	
	public String getAvailibility() {
		return availibility;
	}
	public void setAvailibility(String availibility) {
		this.availibility = availibility;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Product(int productId, String category, String productName, int price, String image, String availibility) {
		super();
		this.productId = productId;
		this.category = category;
		this.productName = productName;
		this.price = price;
		this.image = image;
		this.availibility = availibility;
	}
	
	
}

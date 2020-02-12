package dao;

public class ProductSpec {

	private int Width;
	private int Height;
	private int depth;
	private int weight;
	private String qualitychecking;
	private String packeting;
	private int quantity;
	public int getWidth() {
		return Width;
	}
	public void setWidth(int width) {
		Width = width;
	}
	public int getHeight() {
		return Height;
	}
	public void setHeight(int height) {
		Height = height;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getQualitychecking() {
		return qualitychecking;
	}
	public void setQualitychecking(String qualitychecking) {
		this.qualitychecking = qualitychecking;
	}
	public String getPacketing() {
		return packeting;
	}
	public void setPacketing(String packeting) {
		this.packeting = packeting;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public ProductSpec(int width, int height, int depth, int weight, String qualitychecking, String packeting,
			int quantity) {
		super();
		Width = width;
		Height = height;
		this.depth = depth;
		this.weight = weight;
		this.qualitychecking = qualitychecking;
		this.packeting = packeting;
		this.quantity = quantity;
	}
	
	
}

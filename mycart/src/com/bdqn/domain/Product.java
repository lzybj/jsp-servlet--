package com.bdqn.domain;

public class Product {
	private int productID = 0;
	private String productName = "";
	private float unitPrice = 0f;
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public float getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(float unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Product(int productID, String productName, float unitPrice) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.unitPrice = unitPrice;
	}
}

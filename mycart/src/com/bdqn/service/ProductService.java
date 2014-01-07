package com.bdqn.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bdqn.domain.Product;

public class ProductService {
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private String sql = "";
	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=Northwind";
	public List<Product> findByAll(){
		List<Product> data = new ArrayList<Product>();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,"sa","qaz123");
			stmt = conn.createStatement();
			sql = "select productid,productname,unitprice from products";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				data.add(new Product(rs.getInt("productid"),rs.getString("productname"),rs.getFloat("unitprice")));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return data;
	}
	public Product findByProductID(int parProductID){
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,"sa","qaz123");
			stmt = conn.createStatement();
			sql = "select productid,productname,unitprice from products where productid = " + parProductID;
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				return new Product(rs.getInt("productid"),rs.getString("productname"),rs.getFloat("unitprice"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return null;
	}
	public static void main(String[] args) {
		System.out.println(new ProductService().findByProductID(1).getProductName());
	}
}

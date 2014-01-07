package com.bdqn.inf.imp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bdqn.domain.BNews;
import com.bdqn.domain.Users;
import com.bdqn.inf.IBNewsDao;

public class BNewsDaoImp implements IBNewsDao {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=BDQN_NEWS";
	private String sql = "";
	
	private BNewsDaoImp(){
		
	}
	
	public static BNewsDaoImp getInstance(){
		return new BNewsDaoImp();
	}
	
	public boolean addBNews(BNews news) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,"sa","qaz123");
			sql = "insert into bnews(ntitle,ncontent,imgaddr,uid)values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,news.getnTitle());
			pstmt.setString(2,news.getnContent());
			pstmt.setString(3,news.getImgAddr());
			pstmt.setInt(4,news.getUid());
			int flag = pstmt.executeUpdate();
			if(flag > 0){
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				pstmt.close();
				conn.close();				
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}		
		return false;
	}

	public List<BNews> findByAll() {
		List<BNews> data = new ArrayList<BNews>();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,"sa","qaz123");
			stmt = conn.createStatement();
			sql = "select nid,ntitle from bnews";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				data.add(new BNews(rs.getInt("nid"),rs.getString("ntitle")));
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

	public BNews findByNId(int nid) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,"sa","qaz123");
			stmt = conn.createStatement();
			sql = "select * from bnews where nid = " + nid;
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				return new BNews(rs.getString("ntitle"),rs.getString("ncontent"),rs.getString("imgaddr"),rs.getString("ctime"));
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

}

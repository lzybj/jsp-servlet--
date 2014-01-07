package com.bdqn.imp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.bdqn.domain.Message;
import com.bdqn.inf.IMessageDao;

public class MessageDaoImp implements IMessageDao{
	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private String sql = "";
	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=BDQN_BBS";
	
	public static MessageDaoImp getInstancs(){
		return new MessageDaoImp();
	}
	
	private MessageDaoImp(){
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/BDQN_BBS");
			conn = ds.getConnection();
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		    conn = DriverManager.getConnection(url,"sa","qaz123");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public boolean insertMessage(Message message) {
		// TODO Auto-generated method stub
		try {
			stmt = conn.createStatement();
			if(message.getAuthor().equals("")){
				sql = "insert into tbl_message(message)values('"+ message.getMessage() +"')";				
			}else{
				sql = "insert into tbl_message(message,author)values('"+ message.getMessage() +"','" + message.getAuthor() + "')";
			}
			int flag = stmt.executeUpdate(sql);
			if(flag > 0){
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				stmt.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return false;
	}
	public List<Message> selectAll() {
		// TODO Auto-generated method stub
		List<Message> data = new ArrayList<Message>();
		try {
			stmt = conn.createStatement();
			sql = "select * from tbl_message order by posttime desc";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				data.add(new Message(rs.getInt("id"),rs.getString("message"),rs.getString("author"),rs.getString("postTime")));
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
	//使之分页的每页条数为2条
	public List<Message> findByPageNum(int nowPage){
		List<Message> data  = new ArrayList<Message>();
		try {
			stmt = conn.createStatement();
			sql = "select top 2 * from tbl_message where id not in (select top "+ (nowPage - 1)*2 +" id from tbl_message)";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				data.add(new Message(rs.getInt("id"),rs.getString("message"),rs.getString("author"),rs.getString("postTime")));
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
}

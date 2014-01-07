package com.bdqn.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bdqn.domain.Message;

public class MessageService {
	private Connection conn = null;
	private CallableStatement cstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	private String url = "jdbc:sqlserver://192.168.240.129:1433;DatabaseName=BDQN_SMS";
	public List<Message> findByListSento(String sento){
		List<Message> data = new ArrayList<Message>();
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,"sa","qaz123");
			sql = "{call proc_sms_findSmsListBySento_Noread(?)}";
			cstmt = conn.prepareCall(sql);
			cstmt.setString(1,sento);
			rs = cstmt.executeQuery();
			while(rs.next()){
				data.add(new Message(rs.getInt("msgid"),rs.getInt("state"),rs.getString("sento")));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				cstmt.close();
				conn.close();
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return data;
	}
	public static void main(String[] args) {
		MessageService ms = new MessageService();
		System.out.println(ms.findByListSento("wk").size());
	}
}

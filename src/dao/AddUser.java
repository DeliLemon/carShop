package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import user.User;

public class AddUser {
	Connection conn;
	PreparedStatement pstmt;
	public AddUser() {
		init();
	}
	private void init() {
		// TODO Auto-generated method stub
		conn=JDBCUtil.getConnection();
	}
	public boolean insert(User u)  {
		try {
			pstmt=conn.prepareStatement("insert into user (userID,userName,userRealName,userPW,"
										+ "userSex,userEmail,userPhone,userHome) "
										+ "values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, u.getUserID());
			pstmt.setString(2, u.getUserName());
			pstmt.setString(3, u.getUserRealName());
			pstmt.setString(4, u.getPassword());
			pstmt.setString(5, u.getUserSex());
			pstmt.setString(6, null);
			pstmt.setString(7, u.getUserPhone());
			pstmt.setString(8, u.getUserHome());
			int i=pstmt.executeUpdate();
			if(i==0)return false;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.InitialContext;

import user.User;

public class ChangeUserInfo {
	User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	Connection conn;
	PreparedStatement pstmt;
	public ChangeUserInfo() {
		conn=JDBCUtil.getConnection();
	}
	public ChangeUserInfo(User u) {
		 this();
		 this.user=u;
	}
	public void update() {
		try {
			pstmt=conn.prepareStatement("update `user` set userName=?,userRealName=?,userHome=?,"
					+ "userEMail=?,userPhone=? where userID=?");
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getUserRealName());
			pstmt.setString(3, user.getUserHome());
			pstmt.setString(4, user.getUserEMail());
			pstmt.setString(5, user.getUserPhone());
			pstmt.setString(6, user.getUserID());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

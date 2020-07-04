package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import user.User;
public class GetUserInfo {
	String userID;
	User user=null;
	boolean login_status=false;
	public boolean isLogin_status() {
		return login_status;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}

	public GetUserInfo(String userID,String passwd) {
		this.userID=userID;
		conn=JDBCUtil.getConnection();
		InitInfo(passwd);
	}
	public User getUser() {
		return user;
	}
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	public void InitInfo(String pd) {
		try {
			pstmt=conn.prepareStatement("select * from user where userID=? and userPW=?");
			pstmt.setString(1, this.userID);
			pstmt.setString(2, pd);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				user=new User();
				user.setUserID(userID);
				user.setUserName(rs.getString("userName"));
				user.setUserRealName(rs.getString("userRealName"));
				user.setUserEMail(rs.getString("userEMail"));
				user.setUserHome(rs.getString("userHome"));
				user.setUserPhone(rs.getString("userPhone"));
				user.setUserSex(rs.getString("userSex"));
				login_status=true;
			}else {
				System.out.println("获取失败");
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			close();
		}
	}
	public void close() {
		JDBCUtil.close(rs, pstmt, conn);
	}
}

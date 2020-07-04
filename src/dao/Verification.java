package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Verification {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	public Verification() {
		conn=JDBCUtil.getConnection();
	}
	public boolean verification(String account,String passwd) {
		try {
			pstmt=conn.prepareStatement("select administor from adminstor where administor=? and password=?");
			pstmt.setString(1, account);
			pstmt.setString(2, passwd);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			close();
		}
		return false;
	}
	public void close() {
		JDBCUtil.close(rs, pstmt, conn);
	}
}

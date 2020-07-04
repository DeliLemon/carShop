package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ChangeStatus {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	public ChangeStatus() {
		conn=JDBCUtil.getConnection();
	}
	public void change(int orderID ,String status ) {
		try {
			pstmt=conn.prepareStatement("UPDATE `order` SET `status`=? WHERE `orderID`=?");
			pstmt.setString(1, status);
			pstmt.setInt(2, orderID);
			int ln=0;
			ln=pstmt.executeUpdate();
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

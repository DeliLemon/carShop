package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class GetBenzInfo {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	private int carID;
	private String carLevel;
	private String carType;
	private double carPrice;
	private String carImageurl;
	private String carName;
	public Connection getConn() {
		return conn;
	}
	public PreparedStatement getPstmt() {
		return pstmt;
	}
	public ResultSet getRs() {
		return rs;
	}
	public String getCarName() {
		return carName;
	}
	public int getCarID() {
		return carID;
	}
	public String getCarLevel() {
		return carLevel;
	}
	public String getCarType() {
		return carType;
	}
	public double getCarPrice() {
		return carPrice;
	}
	public String getCarImageurl() {
		return carImageurl;
	}
	public GetBenzInfo(String name) {
		this.carName=name;
		carImageurl=null;
		conn=JDBCUtil.getConnection();
		InitInfo();
		close();
	}
	public void InitInfo() {
		try {
			pstmt=conn.prepareStatement("select * from car where carName=?");
			pstmt.setString(1, this.carName);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				this.carID=rs.getInt("carID");
				this.carLevel=rs.getString("carLevel");
				this.carPrice=rs.getDouble("carPrice");
				this.carType=rs.getString("carType");
				this.carImageurl=rs.getString("carImageurl");
				if(this.carImageurl==null) {
					this.carImageurl="images/car0.jpg";
				}
			}else {
				System.out.println("获取失败");
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
	public void close() {
		JDBCUtil.close(rs, pstmt, conn);
	}
}

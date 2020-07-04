package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import user.Car;

public class SearchCar {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	Vector<Car> vCars;
	public SearchCar() {
		conn=JDBCUtil.getConnection();
	}
	public Vector<Car> search(String name) {
		vCars=new Vector<Car>();
		try {
			pstmt=conn.prepareStatement("select * from car where carName like ? or carType like ? or carLevel=?");
			pstmt.setString(1, "%"+name+"%");
			pstmt.setString(2, "%"+name+"%");
			pstmt.setString(3, "%"+name+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Car car=new Car();
				car.setCarID(rs.getInt("carID"));
				car.setCarName(rs.getString("carName"));
				car.setCarLevel(rs.getString("carLevel"));
				car.setCarType(rs.getString("carType"));
				car.setCarPrice(rs.getDouble("carPrice"));
				car.setCarImageurl(rs.getString("carImageurl"));
				vCars.add(car);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return vCars;
	}
}

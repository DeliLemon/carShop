package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.Vector;

import user.*;
public class UserOrder {
	private Order userOrder;
	private Vector<Order>uOrders=null;
	public Vector<Order> getuOrders() {
		return uOrders;
	}
	public Order getUserOrder() {
		return userOrder;
	}
	public void setUserOrder(Order userOrder) {
		this.userOrder = userOrder;
	}
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	public UserOrder() {
		conn=JDBCUtil.getConnection();
	}
	public void createSingle() {
		try {
			pstmt=conn.prepareStatement
("INSERT INTO mercedes.`order` (userID,userName,userHome,userPhone,carName,count,price) VALUES (?,?,?,?,?,?,?)");
			pstmt.setString(1, userOrder.getUserID());
			pstmt.setString(2, userOrder.getUserName());
			pstmt.setString(3, userOrder.getUserHome());
			pstmt.setString(4, userOrder.getUserPhone());
			pstmt.setString(5, userOrder.getCarName());
			pstmt.setString(6, userOrder.getCount());
			pstmt.setDouble(7, userOrder.getPrice());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			close();
		}
	}
	public void createMuitiply(Vector<Cartshop>cv ,User user) {
		String item="";
		Iterator<Cartshop> it=cv.iterator();
		while(it.hasNext()) {
			Cartshop cs=it.next();
			item=item+cs;
			if(it.hasNext()) {
				item+="##";
			}
		}
	}
	public Vector<Order> get(String userID) {
		try {
			pstmt=conn.prepareStatement("select * from `order` where userID=?");
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			uOrders=new Vector<Order>();
			while(rs.next()) {
				Order order=new Order();
				order.setOrderID(rs.getInt("orderID"));
				order.setCarName(rs.getString("carName"));
				order.setCount(rs.getString("count"));
				order.setPrice(rs.getDouble("price"));
				order.setStatus(rs.getString("status"));
				uOrders.add(order);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			close();
		}
		return uOrders;
	}
	public void close() {
		JDBCUtil.close(rs, pstmt, conn);
	}
}

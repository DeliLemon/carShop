package dao;
import java.awt.event.ItemEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;



import user.Cartshop;
public class MyshoppingCart {
	private String userID;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	Vector<Cartshop> vCart;
	public Connection getConn() {
		return conn;
	}
	public PreparedStatement getPstmt() {
		return pstmt;
	}
	public ResultSet getRs() {
		return rs;
	}
	public String getUserID() {
		return userID;
	}
	public MyshoppingCart(String userID) {
		this.userID=userID;
		this.vCart=new Vector<Cartshop>();
		conn=JDBCUtil.getConnection();
	}
	public void insert(String carName,int carID,double price) {
		int count=1;
		try {
			pstmt=conn.prepareStatement("select count from shoppingCart where carID=? and userID=?");
			pstmt.setInt(1, carID);
			pstmt.setString(2, userID);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt("count")+1;
				pstmt=conn.prepareStatement("update shoppingCart set count=?,price=? where carID=? and userID=?");
				pstmt.setInt(1, count);
				pstmt.setDouble(2, price*count);
				pstmt.setInt(3, carID);
				pstmt.setString(4, userID);
				pstmt.executeUpdate();
			}else {
				pstmt=conn.prepareStatement("insert into shoppingCart (userID,carID,carName,count,price) values(?,?,?,?,?)");
				pstmt.setString(1, userID);
				pstmt.setInt(2, carID);
				pstmt.setString(3, carName);
				pstmt.setInt(4, 1);
				pstmt.setDouble(5, price);
				pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			close();
		}
	}
	public Vector<Cartshop> select() {
		try {
			pstmt=conn.prepareStatement("select identifier,carName,count,price from shoppingCart where userID=?");
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Cartshop cs=new Cartshop();
				cs.setIdentifier(rs.getInt("identifier"));
				cs.setCarName(rs.getString("carName"));
				cs.setCount(rs.getInt("count"));
				cs.setPrice(rs.getDouble("price"));
				vCart.add(cs);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			close();
		}
		return vCart;
	}
	public Cartshop select(String[] identifier) {
		Cartshop item;
		String carName=null;
		double price=0.0;
		int count=0;
		try {
			int index=0;
			while(index<identifier.length) {
				pstmt=conn.prepareStatement("select identifier,carName,count,price from shoppingCart where identifier=?");
				pstmt.setString(1, identifier[index]);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					if(carName==null) {
						carName=""+rs.getString("carName")+" ×"+rs.getInt("count");
					}else {
						carName=carName+"-"+rs.getString("carName")+" ×"+rs.getInt("count")+"\t";
					}
					count+=rs.getInt("count");
					price+=rs.getDouble("price");
				}
				rs.close();
				pstmt.close();
				index++;
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			close();
			item=new Cartshop();
			item.setCarName(carName);
			item.setCount(count);
			item.setPrice(price);
		}
		return item;
	}
	public void delete(int identifier) {
		try {
			pstmt=conn.prepareStatement("delete from shoppingCart where identifier=?");
			pstmt.setInt(1, identifier);
			pstmt.executeUpdate();
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

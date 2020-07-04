package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.Vector;
import user.*;
public class AllOrder {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	private Vector<Order> finished;
	private Vector<Order> Shipped;
	private Vector<Order> toBeShiped;
	public Vector<Order> getFinished() {
		return finished;
	}
	public Vector<Order> getShipped() {
		return Shipped;
	}
	public Vector<Order> getToBeShiped() {
		return toBeShiped;
	}
	public AllOrder() {
		conn=JDBCUtil.getConnection();
		finished=new Vector<Order>();
		Shipped=new Vector<Order>();
		toBeShiped=new Vector<Order>();
	}
	public void get() {
		try {
			//��������Ʒ
			pstmt=conn.prepareStatement("select * from `order` where `status`=?");
			pstmt.setString(1,"������");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Order order=new Order();
				order.setOrderID(rs.getInt("orderID"));
				order.setCarName(rs.getString("carName"));
				order.setCount(rs.getString("count"));
				order.setPrice(rs.getDouble("price"));
				order.setStatus(rs.getString("status"));
				toBeShiped.add(order);
			}
			rs.close();
			pstmt.close();
			//�ѷ���
			pstmt=conn.prepareStatement("select * from `order` where `status`=?");
			pstmt.setString(1,"�ѷ���");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Order order=new Order();
				order.setOrderID(rs.getInt("orderID"));
				order.setCarName(rs.getString("carName"));
				order.setCount(rs.getString("count"));
				order.setPrice(rs.getDouble("price"));
				order.setStatus(rs.getString("status"));
				Shipped.add(order);
			}
			rs.close();
			pstmt.close();
			//��ǩ��
			pstmt=conn.prepareStatement("select * from `order` where `status`=? or `status`='���˻�'");
			pstmt.setString(1,"��ǩ��");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Order order=new Order();
				order.setOrderID(rs.getInt("orderID"));
				order.setCarName(rs.getString("carName"));
				order.setCount(rs.getString("count"));
				order.setPrice(rs.getDouble("price"));
				order.setStatus(rs.getString("status"));
				finished.add(order);
			}
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}finally {
			close();
		}
	}
	public void change() {
		
	}
	public void close() {
		JDBCUtil.close(rs, pstmt, conn);
	}
}
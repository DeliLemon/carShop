package server;

import java.io.IOException;
import java.util.Iterator;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MyshoppingCart;
import dao.UserOrder;
import user.*;

/**
 * Servlet implementation class OrderList
 */
@WebServlet("/OrderList")
public class OrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Vector<Order> uOrders;
		String item="";
		String userID;
		HttpSession session=request.getSession();
		userID=(String) session.getAttribute("userID");
		dao.UserOrder userOrder=new dao.UserOrder();
		uOrders=userOrder.get(userID);
		Iterator<Order> it=uOrders.iterator();
		while(it.hasNext()) {
			Order o=it.next();
			item=item+o;
			if(it.hasNext()) {
				item+="##";
			}
		}
		request.setAttribute("orderList", item);
		request.getRequestDispatcher("userOrderList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

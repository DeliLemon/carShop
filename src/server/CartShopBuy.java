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
import user.Cartshop;
import user.Order;

/**
 * Servlet implementation class CartShopBuy
 */
@WebServlet("/CartShopBuy")
public class CartShopBuy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartShopBuy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] selected=request.getParameterValues("checkedbox");
		Cartshop item;
		int index=0;
		HttpSession session=request.getSession();
		String userID=(String) session.getAttribute("userID");
		MyshoppingCart sC=new MyshoppingCart(userID);
		item=sC.select(selected);
		request.setAttribute("McarName", item.getCarName());
		request.setAttribute("Mcount", item.getCount());
		request.setAttribute("Msum", item.getPrice());
		while(index<selected.length) {
			MyshoppingCart sCart=new MyshoppingCart(userID);
			int identifier=Integer.valueOf(selected[index]);
			sCart.delete(identifier);
			index++;
		}
		request.getRequestDispatcher("multiplyBuy.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

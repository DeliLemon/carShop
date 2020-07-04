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

import user.*;
import dao.MyshoppingCart;
/**
 * Servlet implementation class ShoppingCart
 */
@WebServlet("/ShoppingCart")
public class ShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Vector<Cartshop> vc;
		String cart="";
		String userID;
		HttpSession session=request.getSession();
		userID=(String) session.getAttribute("userID");
		MyshoppingCart sc=new MyshoppingCart(userID);
		vc=sc.select();
		Iterator<Cartshop> it=vc.iterator();
		while(it.hasNext()) {
			Cartshop cartshop=it.next();
			cart=cart+cartshop;
			if(it.hasNext()) {
				cart+="##";
			}
		}
		request.setAttribute("shoppingCart", cart);
		request.getRequestDispatcher("userShoppingCart.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MyshoppingCart;
import user.User;

/**
 * Servlet implementation class DeleteCartShop
 */
@WebServlet("/DeleteCartShop")
public class DeleteCartShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCartShop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] selected=request.getParameterValues("checkedbox");
		int index=0;
		HttpSession session=request.getSession();
		String userID=(String) session.getAttribute("userID");
		while(index<selected.length) {
			MyshoppingCart sCart=new MyshoppingCart(userID);
			int identifier=Integer.valueOf(selected[index]);
			System.out.println(identifier);
			sCart.delete(identifier);
			index++;
		}
		request.getRequestDispatcher("ShoppingCart").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

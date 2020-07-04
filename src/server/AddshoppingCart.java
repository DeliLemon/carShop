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
 * Servlet implementation class AddshoppingCart
 */
@WebServlet("/AddshoppingCart")
public class AddshoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddshoppingCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int carID=(int) session.getAttribute("carID");
		String userID=(String) session.getAttribute("userID");
		String carName=(String)session.getAttribute("carName");
		double price=(double)session.getAttribute("carPrice");
		MyshoppingCart addCartshop=new MyshoppingCart(userID);
		addCartshop.insert(carName, carID,price);
		request.getRequestDispatcher("display.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

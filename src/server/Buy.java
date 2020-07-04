package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import user.*;
import dao.UserOrder;

/**
 * Servlet implementation class Buy
 */
@WebServlet("/Buy")
public class Buy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Buy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID,userName,userHome,userPhone;
		String carName;
		String count;
		double sum;
		HttpSession session=request.getSession();
		userID=(String)session.getAttribute("userID");
		userName=(String)request.getParameter("userName");
		userHome=request.getParameter("userHome");
		userPhone=request.getParameter("userPhone");
		carName=request.getParameter("carName");
		count=request.getParameter("count");
		sum=Double.valueOf(request.getParameter("sum"));
		user.Order uo=new user.Order();
		uo.setUserID(userID);
		uo.setUserName(userName);
		uo.setUserHome(userHome);
		uo.setUserPhone(userPhone);
		uo.setCarName(carName);
		uo.setCount(count);
		uo.setPrice(sum);
		UserOrder uOrder=new UserOrder();
		uOrder.setUserOrder(uo);
		uOrder.createSingle();
		response.sendRedirect("OrderList");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

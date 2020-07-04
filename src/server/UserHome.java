package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ChangeUserInfo;
import user.User;

/**
 * Servlet implementation class UserHome
 */
@WebServlet("/UserHome")
public class UserHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserHome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String userID,userName,userRealName,userHome,userEMail,userPhone; 
		userID=request.getParameter("userID");
		userName=request.getParameter("userName");
		userRealName=request.getParameter("userRealName");
		userHome=request.getParameter("userHome");
		userEMail=request.getParameter("userEMail");
		userPhone=request.getParameter("userPhone");
		User user=new User(userID, userName, userRealName, null, userHome, userEMail, userPhone, null);
		ChangeUserInfo update=new ChangeUserInfo(user);
		update.update();
		HttpSession session=request.getSession();
		session.setAttribute("user", user);
		response.sendRedirect("myhome.jsp");
	}

}

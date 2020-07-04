package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GetUserInfo;
import user.User;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userID=request.getParameter("userID");
		String passwd=request.getParameter("passwd");
		GetUserInfo uInfo=new GetUserInfo(userID, passwd);
		if(uInfo.isLogin_status()) {
			HttpSession session=request.getSession();
			User user=uInfo.getUser();
			session.setAttribute("user", user);
			session.setAttribute("userID", user.getUserID());
			session.setAttribute("userName", user.getUserName());
			session.setAttribute("userHome", user.getUserHome());
			session.setAttribute("userPhone", user.getUserPhone());
			session.setAttribute("userRealName", user.getUserRealName());
			session.setAttribute("userSex", user.getUserSex());
			session.setAttribute("userEMail", user.getUserEMail());
			session.setAttribute("login_status","login"); 
			response.sendRedirect("index.jsp");
		}
		else {
			response.sendRedirect("index.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AddUser;
import user.User;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("还未有此功能 ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		User user=new User();
		user.setUserID(request.getParameter("phone"));
		user.setUserName(request.getParameter("userName"));
		user.setUserRealName(request.getParameter("userRealName"));
		user.setUserSex(request.getParameter("userSex"));
		user.setPassword(request.getParameter("password"));
		user.setUserPhone(request.getParameter("phone"));
		user.setUserHome(request.getParameter("address"));
		AddUser useradd=new AddUser();
		boolean isok=useradd.insert(user);
		if(isok) {
			response.sendRedirect("LoginUI/login.html");
		}else {
			response.sendRedirect("Register/register.html");
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

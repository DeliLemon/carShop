package server;

import java.io.IOException;
import java.util.Iterator;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.Order;

/**
 * Servlet implementation class AllUserOrder
 */
@WebServlet("/AllUserOrder")
public class AllUserOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllUserOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(request.getHeader("Referer"));
		Vector<Order> toBeshipped=null;
		Vector<Order> shipped=null;
		Vector<Order> finished=null;
		dao.AllOrder aOrder=new dao.AllOrder();
		aOrder.get();
		toBeshipped=aOrder.getToBeShiped();
		finished=aOrder.getFinished();
		shipped=aOrder.getShipped();
		String titem="",fitem="",sitem="";
		Iterator<Order> itt=toBeshipped.iterator();
		while(itt.hasNext()) {
			Order o=itt.next();
			titem=titem+o;
			if(itt.hasNext()) {
				titem+="##";
			}
		}
		Iterator<Order> itf=finished.iterator();
		while(itf.hasNext()) {
			Order o=itf.next();
			fitem=fitem+o;
			if(itf.hasNext()) {
				fitem+="##";
			}
		}
		Iterator<Order> its=shipped.iterator();
		while(its.hasNext()) {
			Order o=its.next();
			sitem=sitem+o;
			if(its.hasNext()) {
				sitem+="##";
			}
		}
		request.setAttribute("toBeShipped", titem);
		request.setAttribute("shipped", sitem);
		request.setAttribute("finished", fitem);
		request.getRequestDispatcher("userOrder.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

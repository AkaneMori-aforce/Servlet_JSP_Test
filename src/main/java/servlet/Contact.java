package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Contact
 */
@WebServlet("/servlet/contact")
public class Contact extends HttpServlet {
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String mail = request.getParameter("mail");
		String inquiry = request.getParameter("inquiry");
		String[] newsletter = request.getParameterValues("newsletter");
		String documents = request.getParameter("documents");
		
		request.setAttribute("name", name);
		request.setAttribute("company", company);
		request.setAttribute("mail", mail);
		request.setAttribute("inquiry", inquiry);
		request.setAttribute("newsletter", newsletter);
		
		if(documents.equals("no")) {
			request.getRequestDispatcher("/jsp/contact-send.jsp").forward(request, response);
		}else if(documents.equals("yes")) {
			 request.getRequestDispatcher("/jsp/contact-send-yes.jsp").forward(request, response);
		}
	}

}

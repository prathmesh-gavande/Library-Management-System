package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Bookdao;
import com.entity.Book;

/**
 * Servlet implementation class updateBookServlet
 */
public class updateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		int bid=Integer.parseInt(request.getParameter("bid"));
		String title=request.getParameter("title");
		String author=request.getParameter("author");
		double price=Double.parseDouble(request.getParameter("price"));
		
		Book book= new Book(bid, title, author, price);
		Bookdao.update(book);
		
		response.sendRedirect("index.jsp");
	}

}

package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch01/getPost/add")
public class C3_GetPost extends HttpServlet {
	@Override             
	public void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		resp.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = resp.getWriter(); 
		out.println("<h2>GET</h2>"); 
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		resp.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = resp.getWriter(); 
		out.println("<h2>POST</h2>"); 
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	
	}
}

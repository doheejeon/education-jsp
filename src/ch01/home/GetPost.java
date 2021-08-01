package ch01.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch01/home/add")
public class GetPost extends HttpServlet {
	@Override             
	public void service(HttpServletRequest req, HttpServletResponse resp) //service는 doget,dopost를 둘다 받는다. 중복코드최소화.
			throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		resp.setContentType("text/html; charset=utf-8"); 
		PrintWriter out = resp.getWriter(); 
		out.println("<h2>" + req.getMethod()  + "</h2>");  //req.getMethod덕에 동적으로 바뀌는 페이지.
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}


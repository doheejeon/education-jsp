package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch01/post/add") //url할당, context path후의 주소를 쓴다.
public class C2_Post extends HttpServlet {
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
/*
post 보내는 요청이나 정보값들을 들고있지 않으니까 

doGet  : 해당서블릿의 doget을 톰캣이 호출한다.
doPost : 

이 클래스로 런하면 405에러, 허용되지않은 메소드 :
	다섯가지 알고리즘중에서 리퀘스트 메소드 기본은 get. (브라우저가 기본 메소드인 get을해서  서블릿컨테이ㅏ너에서 C1_Get을 찾아감. 그럼 톰캣은 그 서블릿의 do get을 호출해서 실행이 잘됨
	하지만 dopost에서는 리퀘스트메소드인 doGet을 호출해도 준비해두지않아서 허용되지않은 메소드라고 뜬다. (리퀘스트 메소드가 포스트여야한다) 
	html 에서 form의 method 호출값을 post로 두면된다. 
*/
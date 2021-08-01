package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch01/get/add") //브라우저 주소창에 보여지는게 내가 보낸 웹서블릿의 주소.(주소는 내가주는대로할당됨)"/ch01/hello"해도 됨. 주소는 웹 내에서 유일해야함
public class C1_Get extends HttpServlet { //←리퀘스트 받고 보내는 기능이 가능해짐 
	@Override             /*httpservlet 메소드를  2개 오버라이드한다.↓ 리퀘스트,리스판스가 자바형태로 존재한다.*/
	public void doGet(HttpServletRequest req, HttpServletResponse resp) //두겟은 리퀘스트메소드가 두겟으로 호출됨 톰캣이..
			throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		resp.setContentType("text/html; charset=utf-8"); //메타데이터resp에 클라이어늩에게 줄 정보를 집어넣는다. 그중에 contenttype정보를줌.
		PrintWriter out = resp.getWriter(); //rsp로부터 라이터 객체를 얻어냈다. 
		out.println("<h2>GET</h2>"); //바로 이 가로안에 html코드르 ㄹ써줘서 보낸다.
		//out.println("<p>1 + 2 = 3</p>"); // 정적으로 데이터를 보낸다면..이렇게 보냄.. 
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}


/*
클래스를 만든다 =객체를 만든다. 이 객체가 페이지를 만들어내려면 필수로 이런 기능을 갖고있어야한다: http 통신을 할 수 있는 기능 
 		즉 리퀘스트를 받고 보내는 기능..~! 
5>써블릿 라이브러리에있는 클래스를 상속받아버리기만해도 내 객체에 http통신할 수 잇는 기능이 생긴다 = 이게 바로 servlet를 이용한다는것 
	내가 클래스를 제작하면서 써블렛 클래스를 상속받으면 된다. 그중에서 http를 상속받는다 
	객체의 데이터타입이 http 써블릿 타입을 갖고있는 이 객체를 Servlet이라고 부르기도 한다 (문맥에 따라 뜻을 파악해야한다) 
	
	톰캣이 자동으로 객체생성 그 만들어진 객체를 servlet이라고 함. 톰캣이 만든 서블릿들을 담아두는 그릇을 servlet container라고 한다. 
	 톰캣에서는 써블릿 컨테이너, http server가 핵심 부품이다. 
	 
	 퍼스펙티브가 자바EE인것은 : 서블릿에 (jsp)에 관련된 라이브러리가 준비되어있다. 
	자바스탠다드에디션에는 서블릿관련없음 
	써블릿 하면 뜻이 2중에 하나
	1. 기술의이름인지 - 자바언어로 동적인 페이지를 만들어내는 기술이다.
	2. 객체를 가르키는건지  -http타입을 갖고 있는 객체이다. 

	
써블릿은 톰캣이 만들었다. 
	톰켓은 객체를 자동 생성해주는 기능이 있고 만들어준 그 객체(=servlet)를 담는그릇이 있는데 그것을 servlet container라고 부른다. 
	고로 톰캣은 http server와 servlet container를 핵심으로 가지고 있는 서버이다. 
	
 현재 리퀘스트가 톰캣으로 보내졌다. (deploy가 됨) ->리퀘스트 받으려면  그 객체에 주소가 자동으로 할당돼야하는데 되지않았음. (404에러남)
 	그래서 12번줄 처럼 수동으로주소를 할당해줘야한다.(context path 후의 주소를 적음.)(자동할당이안돼서 오류남)
 	★ 웹주소는 중복되지않게 유일해야한다. 
 	
 브라우저가 받은 정보들: 내가 쓴, 22,24번줄의 html코드를 받아서 <h2>Get</h2> , <p>1 + 2 = 3</p> 을 결국 받음 (동적으로됨)
 만약 정적으로 만든다면. out.println("<p>1 + 2 =3</p>"); 로 주는것. 

 ∴ http통신방식중에 현재 get방식을 써본것 ↑ 특별히 설정안하면 기본값이된다. 
 
 */

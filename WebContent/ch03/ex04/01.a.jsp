<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
A
<%
	response.sendRedirect("01.b.jsp");
%>

<!-- 
a Redirect b -> a forward b햇을때 b의 리스판스를 받는것과 동일하지만, 주소값이 다르다. 
				http://localhost/jsp/ch03/ex04/01.b.jsp
				클라이언트가 비에게 리퀘스트를 보낸다. = 비에서 리스판스가 돌아옴. 
				
a forward b -> 클라이언트가 비에게 리퀘스트를 보내지않는다. (브라우저 주소창에 그대로 a가 남아있다 그게 증거)		

리스판스에 그동안 html코드를 넣었지만 여기서는 주소를 집어넣고있다. 
->주소로 리퀘스트를 자동으로 보냄 (그동안 수동이였음, 3가지방법 :  링크, 폼, 주소타이핑)
	
A redirect B는 되는데 forward는 안되는 경우 : A,B가 다른 서버에 있을때! 
forward는 A,B 리퀘스트객체가 하나의 자바버츄얼머신에 있어야한다. 
JVM은 객체 라이프사이클을 관리한다. 
redirect의 예: 쇼핑할 때, 결제 방식에 따 라 각기 다른 서버로 redirect 된다. 

리다이렉의 액션태그를 쓰려면 라이브러리에있는 클래스를써야한다.
 -->
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("01.b.jsp");
	dispatcher.forward(request, response);
%>

<!-- 
dispactcher 내장객체 
5> 리퀘스트, 리스판스를 포워드의 파라미터로 전달한다.
	forward 라는 객체를 통해서 디스패쳐가 갖고있는 url로 이동하게 해준다. A를 실행하면 B가 나온다. (a를 리스판스보내면 b가 오는것) 페이지 이동됨 
	a가 받은 리퀘스트를 b에게 넘겨준다. (하나의 리퀘스트, 리스판스를 a,b가 공유하게된다.)
	
	이전에 페이지 이동가능한 것 (a의 link, form의 action)...이것들은 수동(내가 클릭을 해야 이동한다)
	지금부터는 서버내부에서 페이지이동을 한다. (서버단에서 페이지이동 함)
	b에서 만든 리스판스를 클라이언트에게 보내주고 끝남.
	
	forward의 액션 태그를 공부해보자! 다음장
 -->
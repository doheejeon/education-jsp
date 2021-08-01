<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<form action='04.numOut.jsp' method='post'>
	<input type='number' name='num'/>
	<input type='submit'/>
</form>
<%
	String msg = request.getParameter("msg"); 
	if(msg != null) out.println(msg); //해당파라미터가 없으니까 null =! null 이라 폼밑에 msg가 안나옴. 만약 인풋넘버가있으면 msg에 값이있으니 8번줄이 실행된다. 
%>

<!-- 
Tomcat이 JSP를 통해 servlet기술을 사용하는 .java파일을 자동으로 만들어주고 .java파일 생성 시.class파일이 생성된다.
servlet 은 관점에 따라 기술을 지칭하기도, 객체를 지칭하기도 합니다.
 -->
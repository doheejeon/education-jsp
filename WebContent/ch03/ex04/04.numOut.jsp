<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String numStr = request.getParameter("num");

	try {
		int num = Integer.parseInt(numStr); //산술연산전에 인트로 먼저 변환한다.
%>
		<%= num * 2 %>
		<a href='04.numIn.jsp'>돌아가기</a>
<%
	} catch(NumberFormatException e) {
%>
		<c:redirect url='04.numIn.jsp?msg=Input Number.'/> 
<%
	}
%>		
		
<!-- 
9,10 이  html코드로 넘어가서 화면에 출력되는 부분임.
폼에 숫자외에 문자르 ㄹ넣으면  catch로 넘어와서 익셉션 처리 14번줄로 처리한다.
 메시지가 쿼리스트링에 있는 14번 url에 집어넣게된다. 

 -->
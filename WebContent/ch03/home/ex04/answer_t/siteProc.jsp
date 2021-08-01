<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
	String site = request.getParameter("site"); //파라미터값을 저장할 변수선언
	if(site == null) site =""; //""은 널포인트익셉셥을 피할 수 있다. 
	
	switch(site) {
		case "daum":		
%>
			<c:redirect url='http://daum.net/'/>
<%
		case "naver":
%>
			<c:redirect url='http://naver.com'/>
<%
		default:
%>
			<c:redirect url='siteIn.jsp?msg=Select site.'/>
<%
	}
%>
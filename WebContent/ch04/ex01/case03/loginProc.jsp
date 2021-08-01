<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
	String userId = request.getParameter("userId"); //메인에서 보낸 두개의 파라미터 userId, isStoreId/ pw는 노관심
	String isStoreId = request.getParameter("isStoreId");
	
	if(userId != null) { //userId가 null이 아니면 세션에 유저아이디넣는다.
		session.setAttribute("userId", userId);
	
		if(isStoreId != null && isStoreId.equals("true")) { //isStoreId값이 트루면.. (자동저장체크했다면)
			Cookie cookie = new Cookie("userId", userId); //id를 저장
			cookie.setMaxAge(10); 
			response.addCookie(cookie); //response에 userId값을 담은 쿠키를 넣는다.
		}
	}
%>
<c:redirect url='main.jsp'/>
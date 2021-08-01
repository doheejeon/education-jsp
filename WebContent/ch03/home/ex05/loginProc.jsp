<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
   String userId = request.getParameter("userId");
   String password = request.getParameter("password");
   
   if(userId.equals("java") && password.equals("java")) {
      session.setAttribute("userId", userId);
%>
  		 <c:redirect url='main.jsp'/>
<%
   } else {
%>
   <c:redirect url='login.jsp'>
      <c:param name='msg' value='ID와 PW를 확인해주세요.'/>
   </c:redirect>
<%
   }
%>
<!-- 

입력-출력전단계까지 여기에넣기 

사용자가 입력한값이 자바인가 하드코디해서 검증 작업
틀리면 ID PW확인해주세요 메시지 
성공하면 java님 환영합니다. 로그아웃버튼 링크, 

-->

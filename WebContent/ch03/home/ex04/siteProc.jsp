<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
	String site = request.getParameter("site");
	
	try{
		int num = Integer.parseInt(site);
%>
<% 
		if (num == 1 ) {
%>
			<c:redirect url='https://www.daum.net'/>
<% 
		}	
%>
<% 
		if (num == 2) {
%>
			<c:redirect url='https://www.naver.com'/>
<% 
		}	
%><% %>
<% 
	} catch(NumberFormatException e){
%>
		<c:redirect url='siteIn.jsp?msg=Please Check the button "Daum" or "Naver"'/>
<%
	}	
%>	
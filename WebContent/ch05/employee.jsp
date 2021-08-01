<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch05.service.EmployeeService, ch05.service.EmployeeServiceImpl' %> <!-- 프레젠테이션은 서비스랑 연결해야하니 서비스를 임포트 -->
<% //스크립트 이용해서 디펜던시인 서비스를 만든다 ↓
	EmployeeService empService = new EmployeeServiceImpl();
%>
<%= empService.getEmployee(100) %>
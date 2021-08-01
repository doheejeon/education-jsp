<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch05.service.TodayService, ch05.service.TodayServiceImpl' %>
<% //스스로 디펜던시 준비해주기 역시나!
	TodayService todayService = new TodayServiceImpl();
%>
<%= todayService.getToday() %> <!-- 날짜데이터를 서비스로부터 얻어옴. -->
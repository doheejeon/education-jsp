<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 

${fruit} <br> <!-- request안에 있던 딸기가 나옴  -->
${pageScope.fruit} <br>
${requestScope.fruit} <br>
${sessionScope.fruit}<br>
${applicationScope.fruit}
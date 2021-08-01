<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<a href='main.html'>메인</a>
<%
   request.setCharacterEncoding("utf-8");
   String[] products = request.getParameterValues("product");
   Object cartObj = session.getAttribute("cart"); //session안에있는 cart를 받아옴(세션에 넣는이유는 페이지 이동에도 커넥션이 죽으면아노디니까 )
   
   if(cartObj != null && products != null) { //프로덕트라는 파라미터, cart라는 파라미터가 있는지를 확인하는 코드   (attribute랑 parameter사용할땐 늘 해당 파라미터가 존재하는지 유무부터 체크!)
      List<String> cart = (List<String>)cartObj;
      for(String product: products)
         cart.remove(product);  //장바구니에서 물건을 빼는코드
   }
%>
<c:redirect url="cartOut.jsp"/>
<!-- 물건을뺴고 장바구니 내부를 한 번 더 체크해야하니까 redirect로 out화면으루가 -->
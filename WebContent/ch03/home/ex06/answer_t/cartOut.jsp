<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<a href='main.html'>메인</a>
<h3>장바구니</h3>
<%
   Object cartObj = session.getAttribute("cart"); //session에서 장바구니를꺼냄(cartAdd.jsp에 15line에 set으로 만든 장바구니를)

   if(cartObj != null) {
      List<String> cart = (List<String>)cartObj;
      if(cart.size() > 0) {
%>
      <form action='cartDelProc.jsp' method='post'> <!--  뺴기 버트을 누르면 delproc로간다. -->
         <ul>
<%
               for(String product: cart) {            
%>
                  <li><%= product %><input type="checkbox" name="product" value="<%= product %>"/></li>
<%
               }
%>
         </ul>
         <button type="submit">빼기</button>
      </form>
<%
               } else out.print("물건이 없습니다.");
      } else out.print("장바구니가 없습니다.");
%>
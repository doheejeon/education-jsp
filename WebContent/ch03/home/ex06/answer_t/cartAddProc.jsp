<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
   request.setCharacterEncoding("utf-8"); //한글이 안깨지도록 encoding 넣어줌 
   String[] products = request.getParameterValues("product");   //프로덕트라는 파라미터가 있는지를 확인하는 코드
   //8line products안에 들어올 수 value는 단 두가지. product와 null값
   
   if (products != null){
      List<String> cart = null;
      
      Object cartObj = session.getAttribute("cart");
      if(cartObj == null) {
         cart = new ArrayList<>(); //장바귀구니를 새로 하나 만들었음. (장바구니가 없는경우의 if문을 만들었기때문에 )
         session.setAttribute("cart", cart);   //이제 막 session에서 새로태어난 장바구니 
      } else cart =(List<String>)cartObj; //list로 캐스팅 한 이유는 add매서드를 쓰기위해서 ^^ 도리언니가 맞았당
      
      for(String product: products)
         cart.add(product);
   }
%>
<c:redirect url='cartOut.jsp'/>


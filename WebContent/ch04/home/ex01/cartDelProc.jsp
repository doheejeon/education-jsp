<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
	request.setCharacterEncoding("utf-8");
	String[] products = request.getParameterValues("product");
	
	if(products != null && products.length > 0) {
		String cart = ""; //카트를 하나 더 준비
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie: cookies)
			if(cookie.getName().equals("cart"))
				cart = cookie.getValue(); //장바구니 준비완료 -------
				
		for(String product: products)
			cart = cart.replaceFirst(product + "/", ""); 
	
		Cookie cookie = new Cookie("cart", cart);
		response.addCookie(cookie);
%>
		<c:redirect url='cartOut.jsp'/>
<%
	} else {
%>
		<c:redirect url='cartOut.jsp'>
			<c:param name='msg' value='삭제할 물건을 고르세요.'/>
		</c:redirect>
<%
	}
%>

<!-- 
16> //노트북/ -> ""로 바꿈.그냥replace쓰면 중복된것들이 다같이 삭제됨. 그걸막으려고 replace first씀(처음발견되는것만 적용)
 -->
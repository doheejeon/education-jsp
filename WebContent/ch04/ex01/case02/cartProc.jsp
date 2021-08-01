<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
	request.setCharacterEncoding("utf-8");
	String[] products = request.getParameterValues("product");
	
	if(products != null) {
		String cart = ""; //쿠키라는데이터한계때문에 스트링으로준비
		for(String product: products) cart += product + "/"; //카트안에 물건들을 집어넣는다. 
		
		Cookie cookie = new Cookie("cart", cart);//포 실행후 카트에는 물건이 채워져있다. 물건으로 채워진카트는 쿠키로준비한다.
		cookie.setMaxAge(60 * 60 * 24 * 7);//쿠키에 일주일을 맥스에이지로준다. 파라미터의시간단위는 '초"
		response.addCookie(cookie);// 리스판스에 쿠키를 집어넣음. 
	}
%>
<c:redirect url='cartOut.jsp'/>   <!-- 장바구니보기로 리다이렉트 -->

<!-- 
세션장바구니를 쿠키장바구니로 리팩토링할때 고민해야 하는것 
1.장바구니에 상품들이 언제까지 살아남게할건지 2.

세션에저장되는 장바구니는 오브젝이였는데 쿠키에 저장되는 장바구니 타입은 String인것..(쿠키는txt라서)
	= list.remove같은 메소드를 쓰지못함.. (리스트객체가아니라서 = 오브젝아님)3
	
전에 java에서 배웠던 띄어쓰기 단위로 String을 떼어 만들 수있는 API를 사용하면 된다.
선택한 프로덕트를 배열에 담고, 해당 배열을 for each 문법을 통해 하나의 String 값으로 만들어 cookie에 저장한 후,
java에서 배웠던 split 혹은 substring을 통해 나누면 될 것 같습니다.

cart.add(product); -> cart += product + ""; 자바복습,,,
 -->
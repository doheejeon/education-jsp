<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
	request.setCharacterEncoding("utf-8");//파라미터밸류들이 한글이라 한글인코딩부터한다. 
	
	String[] products = request.getParameterValues("product");
	
	if(products != null && products.length > 0) {//★product라는 파라미터가 있냐? 부터 검토한다. 장바구니가 있냐? ->그다음에 장바구니에담은 원소개수파악
		List<String> cart = new ArrayList<>();//장바구니에 물건을 담기위해 장바구니부터 생성 
		
		for(String product: products) 
			cart.add(product); //프로덕츠의 원소를 하나씩add로 담으면서 드디어 장바구니에 물건이 담기게됨(이것은어딜다녀도 유지돼야한다)장바구니,물건완료
			
		
		session.setAttribute("cart", cart); //장바구니를 이제 세션객체에 담아서 다시꺼내쓸수있도록한다.
	}			
%>
<c:redirect url='cartOut.jsp'/>  <!-- out 은 카트에있는것을 출력하는 페이지 -->

<!-- 
jsp란 기술은 앱3계층중의 presentation 과 관련있다. 즉 jsp를 쓰는것은 프레젠텡션과 관련된 기술을 쓰는것이다. 
퍼시스턴스는 마이바티스 
jsp는 프레젠테이션계층에 쓰는 기술이다. (즉 서비스, 퍼시스턴스계층에 영향을 주지않고 받지도않는다) 
	jsp는 DB연결을고민할 필요가없음 (서로 관련이없기떄문이다) 
	
9> 장바구니에 "물건"이 담아있느냐?으로 보기위해 우선 "파라미터"가 있는지부터 검토한다. products 가 null인지아닌지!! 
	-> if(products != null && products.lenth > 0) 원소의 개수를 파악하는것. 

a와 b가 다른작업일때 redirect를 쓴다.(다른서버에 있어도) 


 -->
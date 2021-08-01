<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.html'>메인</a>

<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart");

	if(cartObj != null) { 
		List<String> cart = (List<String>)cartObj;  //오브젝클래스에서는 내가쓰고싶은 사이즈메소드를쓸수없음(리스트가갖고있는메소드라)사이즈쓰고싶어서 리스트로  캐스팅시켜줌
		
		if(cart.size() > 0) {
%>
		<ul>
<%
			for(String product: cart) { 
%>
				<li><%= product %></li>
<%
			} 
%>
		</ul>
<%
		} else out.println("장바구니에 물건이 없습니다.");  
	} else out.println("장바구니가 없습니다.");
%>

<!--  장바구니에있는물건보여주는페이지 
7> 리스트타입이여도 어트리뷰트로 넣는순간 오브젝이됨. 
9> 역시 카트오브젝ㅇ이 있는지부터 검토해야한다. (데이터가있는지부터 검토)
	외부에서 전달받는 (지금과같은상황, 카트를 외부에서 전달받음) 데이터의 경우, 데이터의 유무부터 조사해야한다.
10> //카트obj에 있는걸 캐스팅해야 리스트의 기능을 쓸 수있다. 
12> //여기서 트루값이나오면, 카트안에 물건을꺼내서 장바구니에무슨물건들이있는지 보여준다. 
	카트가 있는게확인되면 , 카트안에 물건이 있는지 확인한다. 	
	리스트안에 원소유무확인하려면 size메소드이용 
	
16 > 카트에서 꺼낸족족 리스트아이템에 추가
20 > //ul안에 list아이템을 N개  만들어냈다. 
24>//카트안에 물건이 없는 경우 
25> /9번의 장바구니가 없는경우 
	
	
 -->
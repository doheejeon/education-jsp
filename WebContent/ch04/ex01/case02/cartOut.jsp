<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %><!-- import하기 -->
<%@ page import='java.util.StringTokenizer' %> <!-- import하기 -->
<a href='main.html'>메인</a>
<%
	List<String> cart = new ArrayList<>(); //카트준비. 여기서는리스트로준비했다. 쿠키는 리퀘스트에 담겨서 서버로 자동으로 저장된다.
	
	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) { //쿠키배열에서 쿠키를 하나씩꺼낸다.
		if(cookie.getName().equals("cart")){ //꺼낸쿠키이름이 "카트"이면 쿠키에서 값을꺼내 읽어온다. ↓
			String tmp = cookie.getValue(); //tmp안에는 노트북/ 모니터/ 가 있다. 
			st = new StringTokenizer(tmp, "/"); // 구분자인 /를 사용해서 토큰을 쪼갠다.=스트링 타입객체를 /로 하나씩 잘라서 개별객체로만들어줌
			while(st.hasMoreTokens())//토큰이있는지 먼저조사, 있으면 장바구니에 물건담는다.
				cart.add(st.nextToken()); //StringTokenizer 클래스객체에서 다음 토큰을 읽어온다. 
		}
	}
	
	if(cart.size() > 0){
%>
		<ul>
<%
			for(String product:cart) { //카트에서 물건ㅇ르 하나씩 꺼낸다.
%>
				<li><%= product %></li> <!-- ↑그 물건을 리스트아이템으로 나열.  -->
<%
			}
%>
		</ul>
<%
	} else out.println("물건이 없습니다.");
%>
<!-- 
쿠키형태로있던 카트를 리스트형태로 변환하는 과정이다. 
StringTokenizer
	
이 경우, 쿠키가 계속 덧씌워지기때문에 이전의 장바구니도 계속 사라지는데 맞을까요? -> 네
 -->
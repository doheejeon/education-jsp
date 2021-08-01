<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<%
		Object user = session.getAttribute("userId");//세션에서유저아이디어트리뷰트꺼냄= 최초에는 없다
		
		if(user == null){
			String userId = ""; //userId없으면 변수선언하고 쿠키를읽어낸다 
			Cookie[] cookies = request.getCookies();
			
			if(cookies != null){
				for(Cookie cookie: cookies) //쿠키가있으면 쿠키에서 쿠키를 하나씩 꺼낸다.
					if(cookie.getName().equals("userId")) //어디선가 실행돼서 쿠키에  userID가있으면
						userId = cookie.getValue(); //얻은 value의값을 userId에 저장
			}
%>
			<form action='loginProc.jsp' method='post'>
				ID: <input type='text' name='userId' value='<%= userId %>' /> <!-- 위에서얻어낸 value값을 userId에넣음 -->
				PW: <input type='password' name='userPw'/><br><br> <!-- pw는 저장하지않음  -->
				<input type='checkbox' name='isStoreId' value='true'/>ID 저장  <!-- 아이디저장하고싶다면 이 체크박스쓰기 -->
	 			<input type='submit' value='로그인'/>
			</form>
<%
		} else { //유저가없는경우마무리하고 만약 있다면 아래로..
%>
			<%= user %>님, 환영합니다. &nbsp;
			<a href='logout.jsp'>로그아웃</a>
<%
		}
%>
<!-- 
"로그인 아이디저장 기능만들기" (영상)

 -->
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<a href='main.html'>메인</a>
<% //삭제역시 덮어쓰기하면됨. 
	Cookie cookie = new Cookie("age",""); //삭제하고싶은 쿠키이름과동일하게 만들고, 밸류는 넣지않아도된다(여ㅓ차피삭제될거라서)
	cookie.setMaxAge(0); //즉 이 쿠키는 태어나자마자 바로 뒤지는고 
	
	response.addCookie(cookie); //에이지쿠키에 새 쿠키를 덮어씌움.
%>

<!-- 
덮어쓰기할 쿠키에 Max-age를 조정해서 모두 지워버린다.
 -->
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<a href='main.html'>메인</a>
<% //↓ 쿠키이름이 과거에만든 age이름과동일하게 만들었는데 value가 다르다.이걸리스판스에넣으면 이름이같아서 덮어쓰기돼서 보여주는것을 우리가볼때 ㄴ수정으로보임 
	Cookie cookie = new Cookie("age", "34"); //즉수정하는방법은.수정하고싶은쿠키와이름이같은 새쿠키르만들어서 덮어쓰기하면된다.
	response.addCookie(cookie);
%>

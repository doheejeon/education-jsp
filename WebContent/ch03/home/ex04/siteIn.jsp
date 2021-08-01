<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %> 
<form action='siteProc.jsp' method='post'>
	<input type='radio' name='site' value='1'/>다음
	<input type='radio' name='site' value='2'/>네이버 <br>
	<input type='submit'/>
</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>

<!-- 과제
다음이나 네이버를 선택하고, 폼을 제출합니다.
해당 사이트로 이동한다. 

폼을 미작성하고 제출하면, 다시 폼으로 돌아옵니다. 
위 경우, 폼 아래에 선택 안내 메세지를 출력한다. 

 -->
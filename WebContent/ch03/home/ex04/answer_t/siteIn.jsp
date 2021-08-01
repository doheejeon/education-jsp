<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<form action='siteProc.jsp'>
	<input type='radio' name='site' value='daum'>다음
	<input type='radio' name='site' value='naver'>네이버
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
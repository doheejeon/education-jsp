<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String[] letters = request.getParameterValues("letters");
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("jobs");
%>

<% 
	if(letters != null) //파라미터가있는지부터 조사하기.
		for(String letter: letters) {
%>

		<%= letter %> &nbsp;
<%
		}
%> <br>

<%= gender %> <br>

<%
	if(jobs != null)
		for(String job: jobs) {
%>
		<%= job %> &nbsp;
<%
		}
%> 
<!-- 
value값이 checkbox의 밸류값이 여러개일땐 파라미터밸류의 타입은 스트링배열을 사용하면된다.
	→getParameterValues
8> *null값 오류를 막기위해 if을 넣어준다. -> 모두 체크를 안해도 에러가아닌 null이 나온다.


 --> 
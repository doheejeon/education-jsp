<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page isErrorPage='true'%>
<%@ page import= 'org.apache.logging.log4j.LogManager'%>
<%@ page import= 'org.apache.logging.log4j.Logger' %>

<h3>시스템 에러가 발생했습니다.</h3>
<h5>고객센터 1577-1577로 문의하세요.</h5>

<%
	Logger logger = null;
	if(application.getAttribute("logger") != null) //최초에는 로거거 없고두번이상실행시 로거가생김.(없으면만든다)
		logger = (Logger)application.getAttribute("logger"); //바로 여기서 어플리케이션어트리뷰트를씀
	else {
		logger = LogManager.getLogger();
		application.setAttribute("logger",logger);
	}
	
	logger.error(exception);
%>



<!-- 
error페이지에는 exception내장객체사용가능.
현재 페이지에서 exception객체쓰고싶을땐 2번줄처럼 isErrorPage=true 속성넣어주면된다ㅣ.
6,7> 에러종류ㄱ와 관계없이 공통으로 나오는 문구.
9->스크립트릿안에 각각의 메세지를 쓰면된다. 

 -->
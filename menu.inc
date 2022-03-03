<%@ page contentType="text/html;charset=UTF-8"%>

<nav data-role="navbar">
	<ul> 
		<%
		// 로그아웃 상태이면 
		if ((String)session.getAttribute("US_ID") == null) {
		%>	
			<li><a href="join.jsp" data-ajax="false">회원가입</a></li>
		<%
        // 로그인 상태이면
		} else {	
		%>
			<li><a href="main_user.jsp" data-ajax="false">좌석 조회</a></li>
		<%
		}
		%>
	</ul> 
</nav>
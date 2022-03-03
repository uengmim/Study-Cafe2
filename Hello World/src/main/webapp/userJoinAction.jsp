<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%
	request.setCharacterEncoding("UTF-8");
	String US_ID = null;
	String US_PW = null;
	if(request.getParameter("US_ID") != null){
		US_ID = (String) request.getParameter("US_ID");
	}
	if(request.getParameter("US_PW") != null){
		US_PW = (String) request.getParameter("US_PW");
	}
	if(US_ID == null || US_PW ==null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.');");
		script.println("hisory.back();");
		script.println("</script>");
		script.close();
		return;
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(US_ID, US_PW);
	if (result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입 성공했습니다.');");
		script.println("location.href = 'index.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 db 연동</title>
</head>
<body>

<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<h2>테이블 user에 데이터를 삽입하는 프로그램 </h2>
<hr><center>
<h2>학생정보 등록</h2>

<%
    Connection con = null;
    PreparedStatement pstmt = null;
	Statement stmt = null;
    StringBuffer SQL = new StringBuffer("insert into user(US_ID, US_PW, US_NM, US_NUM, US_ADDR) "); 
    SQL.append("values (?, ?, ?, ?, ?)");

	String driverName = "org.gjt.mm.mysql.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/mysql21";

    try {
		Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "kbc0924");
 //       pstmt = con.prepareStatement(sql);
 //       pstmt.executeUpdate();

        pstmt = con.prepareStatement(SQL.toString());   
        //삽입할 학생 레코드 데이터 입력
        pstmt.setString(1, request.getParameter("US_ID"));
        pstmt.setString(2, request.getParameter("US_PW"));
        pstmt.setString(3, request.getParameter("US_NM"));
        pstmt.setString(4, request.getParameter("US_NUM"));
        pstmt.setString(5, request.getParameter("US_ADDR"));
       
        

        int rowCount = pstmt.executeUpdate();        
        if (rowCount == 1) response.sendRedirect("login2.jsp");
        else out.println("학생 레코드 삽입에 문제가 있습니다.");
        
        //다시 학생 조회
        stmt = con.createStatement();

        session.setAttribute("ID", request.getParameter("US_ID"));
        session.setAttribute("name", request.getParameter("US_NM"));

    }
    catch(Exception e) {
    	out.println("MySql 데이터베이스 studycafe의 student 조회에 문제가 있습니다. <hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(pstmt != null) pstmt.close();
        if(con != null) con.close();
    }
%>

<p><hr>

</body>
</html>
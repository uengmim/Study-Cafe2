<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%request.setCharacterEncoding("UTF-8"); %>
<%
String ID = request.getParameter("id");
String pswd = request.getParameter("password");
String name = "";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String sql = "";
String rst = "success";
String msg = "";
String driverName = "org.gjt.mm.mysql.Driver";
String dbURL = "jdbc:mysql://localhost:3306/mysql21";

try {


Class.forName(driverName);
conn = DriverManager.getConnection(dbURL, "root", "kbc0924");

    sql = "select US_NM " +
        " from user " +
        " where US_ID = ? " +
        " and US_PW = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, ID);
    pstmt.setString(2, pswd);
    rs = pstmt.executeQuery();

    if (rs.next()){
        name = rs.getString("US_NM");
    
        session.setAttribute("ID", ID);
        session.setAttribute("name", name);
    } else {
        rst = "Login Error";
        msg = "not user!";
    }
} catch (SQLException e) {
    rst = "시스템에러";
    msg = e.getMessage();
} finally {
    if(rs != null)
        rs.close();
    if(pstmt != null)
        pstmt.close();
    if(conn != null)
        conn.close();
}



if(rst.equals("success"))
    response.sendRedirect("main_user(sub).jsp");
else
    response.sendRedirect("showError.jsp?rst=" + rst + "&msg=" + msg);
%>
    
    

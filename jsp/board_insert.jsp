<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
    <title>게시판</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
</head>

<body>

  <%
    request.setCharacterEncoding("UTF-8");
    Class.forName("org.gjt.mm.mysql.Driver"); // mysql 연동
    String url = "jdbc:mysql://localhost:3306/mysql21?useUnicode=true&characterEncoding=utf8"; // mysql 데이터베이스명
    String mysql_id = "root";   // mysql id값
    String mysql_pw = "kbc0924";   // mysql pw값
    String BO_TI = request.getParameter("BO_TI");    // 넘어온 글제목 값 저장
    String BO_CO = request.getParameter("BO_CO"); // 넘어온 글내용 값 저장

     try{

        Connection conn = DriverManager.getConnection(url, mysql_id, mysql_pw);    // 실제 DB 연동시도
        String sql = "insert into board(BO_TI, BO_CO) values(?,?)"; // insert 쿼리문
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, BO_TI);
        pstmt.setString(2, BO_CO);
        pstmt.execute();
        pstmt.close();

     }catch(SQLException e){

       out.println(e.toString());

     }

  %>

  <script>

    alert("게시글이 입력 되었습니다.");
    window.location.href="board_list.jsp";

  </script>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My page</title>
</head>
<style>
    .screen-header__menu {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: var(--horizontal-space);
        background-color: skyblue;
    }
    .screen-header_menu{
        padding: 40px;
        background-color: skyblue;
    }
    .screen-header_menu_title {
        color: white;
        font-size: 32px;
        font-weight: 600;
    }
    table{
        width :60%;
        margin: auto;
    }
</style>
<body>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<header class="screen-header__menu">
    <h1 class="screen-header__title"onclick= "location.href = 'main_user(sub).jsp'" style="cursor:pointer">백석 스터디카페</h1>
    <a class="nav__link" href="menu_User.jsp">
        <i class="fas fa-arrow-left fa-2x"></i>
    </a>
</header>
<header class="screen-header_menu">
    <h1 class="screen-header_menu_title">My Page</h1>

</header>
<center><h3 > 내 정보 </h3></center>
<div class="container">
    <div class="row">
    
      <table class="table table-striped" width="800" style="text-align: center; border: 1px;" >
        <thead>
          <tr>
            <th class="ID">아이디</th>
            <th class="Name">이름 </th>
            <th class="Number">전화번호</th>
            <th class="Address">주소</th>
          </tr>
        </thead>
        <%
        Class.forName("org.gjt.mm.mysql.Driver"); // mysql 연동
        String url = "jdbc:mysql://localhost:3306/mysql21?useUnicode=true&characterEncoding=UTF-8"; // mysql 데이터베이스명
        String mysql_id = "root";   // mysql id값
        String mysql_pw = "kbc0924";   // mysql pw값
        int total = 0;
    
        try{
          Connection conn = DriverManager.getConnection(url, mysql_id, mysql_pw);    // 실제 DB 연동시도
          Statement stmt = conn.createStatement();
          String totalSql = "select count(*) from user;";  // 총 글갯수를 찾는 sql문
          ResultSet rs = stmt.executeQuery(totalSql);


          if(rs.next()){            // 결과가 있다면 true값을 반환합니다
            total = rs.getInt(1);   // total에 전체 글 갯수 값 대입
          }// total은 나중에 페이징 처리시 사용
          String listSql = "select US_ID, US_PW, US_NUM, US_ADDR from user "; // 전체 리스트를 가져오는 sql문
          rs = stmt.executeQuery(listSql); // try catch에서 오류가없을시에 출력되는 내용입니다
    
      %>

      <%

      // total이 0일때, 곧 게시글이 아무것도 없을때 출력되는 내용입니다.
    
        if(total==0){
    
      %>
    
        <tr>
    
          <td>정보가 없습니다.</td>
    
        </tr>
    
        <%

        // total이 0이 아닐때 변수를 선언해주고 출력되는 내용을 순서에 맞게 대입하는 내용입니다.
      
          } else{
      
            while(rs.next()){ //rs값이 있을때까지 반복합니다.
      
              String US_ID = rs.getString(1);           // sql문의 첫번째 컬럼내용을 담습니다.
      
              String US_PW = rs.getString(2);   // sql문의 두번째 컬럼내용을 담습니다.
      
              String US_NUM = rs.getString(3); // sql문의 세번째 컬럼내용을 담습니다.
      
              String US_ADDR = rs.getString(4); // sql문의 세번째 컬럼내용을 담습니다.

      
        // 실제 리스트가 출력되는 부분 입니다.
      
        %>
        <tbody>
            <tr>
     
              <td><%=US_ID%></td>
    
            
              <td><%=US_PW%></td>
              
            
              <td><%=US_NUM%></td>

              <td><%=US_ADDR%></td>

            </tr>
          </tbody>
          <%
          %>
        
  
    <%
  
        }
  
      }
  
      rs.close();
  
      conn.close();
  
      stmt.close();
  
    }catch(SQLException e){
  
      out.println(e.toString());
  
    }
  
    %>
<script src="https://kit.fontawesome.com/503c31bf31.js" crossorigin="anonymous">
</script>
</body>
</html>
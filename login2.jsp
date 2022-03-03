<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="css/style.css">
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>백석대학교 스터디카페</title>

</head>
<body>

<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
  <main id="main">
    <header class="welcome-header">
        <h1 class="welcome-header__title">백석대 스터디카페</h1>
        <p class="welcome-header__text">
         안녕하세요, 스터디 카페 좌석예약사이트입니다.</p>
         
    </header>
    <form method="POST" action="login.jsp" id="login-form">
        <input name="id" type="text" placeholder="ID" />
        <input name="password" type="password" placeholder="PASSWORD" />
        <input name="login" type="submit" name=join2 value="로그인" />
        <input name="sign" type="button" onClick="location.href='join.jsp'" value="회원가입" />  

        

        <!-- 3. 푸터 -->
<footer data-role="footer" data-theme="a" data-position="fixed">
  
</footer>
    </form>
    
</main>

</body>

</html>
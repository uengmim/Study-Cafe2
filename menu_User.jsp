<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/style.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>menu_User</title>
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
</style>
<body>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<header class="screen-header__menu">
    <h1 class="screen-header__title" onclick= "location.href = 'main_user(sub).jsp'" style="cursor:pointer">백석 스터디카페</h1>
    <a class="nav__link" href="main_user(sub).jsp">
        <i class="fas fa-arrow-left fa-2x"></i>
    </a>
</header>
<header class="screen-header_menu">
    <h1 class="screen-header_menu_title">MENU</h1>

</header>
<form method="get" id="login-form">
    <input name = 'mypage' type="button"  value="마이페이지" onClick="location.href='mypage.jsp'"/>
    <input name = 'write' type="button" value="게시판" onClick="location.href='board_list.jsp'"/>
    <input name = 'delete user information' type="button" value="회원탈퇴" onClick="location.href='user_Information.jsp'"/>
</form>
<form method="POST" action="logout.jsp" id="login-form">
 <input name="logout" type="submit" id="logout" value="로그아웃">
</form>









<script src="https://kit.fontawesome.com/503c31bf31.js" crossorigin="anonymous">
</script>
</body>
</html>
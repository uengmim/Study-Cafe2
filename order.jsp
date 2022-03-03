<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/order.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메뉴 주문</title>
</head>
<style>
   
    
</style>
<body>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<header class="screen-header__menu">
    <h1 class="screen-header__title">백석 스터디카페</h1>
    <a class="nav__link" href="main_user(sub).jsp">
        <i class="fas fa-arrow-left fa-2x"></i>
    </a>
</header>
<header class="screen-header_menu">
    <h1 class="screen-header_menu_title">Order</h1>
    <h2 class="screen-header_menu_sub">음식을 주문해보세요.</h2>
</header>

<div class="part">
   <div class="line">
        <div class="menu_cafe" style="float: left;">
            <img class="americano" src="img/order1.png" alt="My Image" width="300dp" height="300dp">
            <h3 class="menu_title">아이스 아메리카노<br>3500원</h3>
            <button class="order" onclick="btn()">주문하기</button>
        </div>
        <div class="menu_cafe" style="float: left;">
            <img class="americano" src="img/order2.png" alt="My Image" width="300dp" height="300dp">
            <h3 class="menu_title">아이스 그린티라떼<br>4500원</h3>
            <button class="order" onclick="btn()">주문하기</button>
        </div>
        <div class="menu_cafe" style="float: left;">
            <img class="americano" src="img/order3.png" alt="My Image" width="300dp" height="300dp">
            <h3 class="menu_title">아이스 유자차<br>3300원</h3>
            <button class="order"onclick="btn()">주문하기</button>
        </div>
        <div class="menu_cafe" style="float: left;">
             <img class="americano" src="img/order4.png" alt="My Image" width="300dp" height="300dp">
             <h3 class="menu_title">아이스티<br>3300원</h3>
             <button class="order" onclick="btn()">주문하기</button>
        </div>
    </div>
</div> <!--첫 줄-->

<div class="part">
    <div class="line">
         <div class="menu_cafe" style="float: left;">
             <img class="americano" src="img/order5.png" alt="My Image" width="300dp" height="300dp">
             <h3 class="menu_title">아이스 초코라뗴<br>4500원</h3>
             <button class="order" onclick="btn()">주문하기</button>
         </div>
         <div class="menu_cafe" style="float: left;">
             <img class="americano" src="img/order6.png" alt="My Image" width="300dp" height="300dp">
             <h3 class="menu_title">카페라떼<br>4000원</h3>
             <button class="order" onclick="btn()">주문하기</button>
         </div>
         <div class="menu_cafe" style="float: left;">
             <img class="americano" src="img/order7.png" alt="My Image" width="300dp" height="300dp">
             <h3 class="menu_title">아이스 아메리카노<br>3500원</h3>
             <button class="order" onclick="btn()">주문하기</button>
         </div>
         <div class="menu_cafe" style="float: left;">
              <img src="img/order8.png" alt="My Image" width="300dp" height="300dp">
              <h3 class="menu_title">자몽에이드<br>4000원</h3>
              <button onclick="btn()" class="order">주문하기</button>
         </div>
     </div>
 </div> <!--두번째 줄-->
<script src="https://kit.fontawesome.com/503c31bf31.js" crossorigin="anonymous">
</script>
<script>
    function btn(){
        alert("주문이 완료되었습니다.");
    }
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;">
    <link rel="stylesheet" href="css/section.css">
    <title>main_user</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<header class="screen-header">
    <h1 class="screen-header__title">백석 스터디카페</h1>
    <a class="nav__link" href="menu_User.jsp">
        <i class="fas fa-ellipsis-h fa-2x"></i>
    </a>
</header>
<style>
  .nav {
  position: fixed;
  bottom: 0;
  width: 100%;
  background-color: #f9f9fa;
  padding: 20px 50px;
  box-sizing: border-box;
  border-top: 1px solid rgba(121, 121, 121, 0.3);
}
.nav__list {
  display: flex;
  justify-content: space-between;
}
.nav__link {
  display: flex;
  justify-content: space-between;
  color: white;
}
.nav__notification {
  position: absolute;
  left: 15px;
  bottom: 15px;
}
.nav__ellipsis_dot {
  background-color: tomato;
  width: 8px;
  height: 8px;
  border-radius: 15px;
  position: absolute;
  left: 30px;
  bottom: 29px;
}
.nav {
  background-color: #f9f9fa;
  padding: 20px 30px;
}
.nav__list {
  display: flex;
  justify-content: space-between;
  color: bisque;
}

  .screen-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: var(--horizontal-space);
  margin-bottom: 10px;
  background-color: skyblue;
}

.screen-header__title {
  font-size: 32px;
  font-weight: 600;
}
.screen-header__icons span {
  margin-left: 25px;
}


.btn-1{
    border: 1px solid skyblue;
    background-color: rgba(0, 0, 0, 0);
    color: skyblue;
    padding: 5px;
    cursor: pointer;
    font-size: 30px;
    border-radius: 5px;
}
.btn-1:hover{
    color: white;
    background-color: skyblue;
}
	/* 좌,우 슬라이드 버튼 */
	.slide-control > div {display:none;}
	.section .left {left:30px;background:url('img/left.png') center center / 100% no-repeat;}
	.section .right {right:30px;background:url('img/right.png') center center / 100% no-repeat;}
	.section input[id="slide01"]:checked ~ .slidewrap .slide-control > div:nth-child(1) {display:block;}
	.section input[id="slide02"]:checked ~ .slidewrap .slide-control > div:nth-child(2) {display:block;}
	.section input[id="slide03"]:checked ~ .slidewrap .slide-control > div:nth-child(3) {display:block;}
	.section input[id="slide04"]:checked ~ .slidewrap .slide-control > div:nth-child(4) {display:block;}
	.section input[id="slide04"]:checked ~ .slidewrap .slidelist > li {transform: translateX(-300%);}

</style>

<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<input type="radio" name="slide" id="slide04">
	<div class="slidewrap">
		
		<ul class="slidelist">
			<!-- 슬라이드 영역 -->
			<li class="slideitem">
				<a>
					<div class="textbox">
						<h3>안녕하세요, 백석스터디카페입니다.</h3>
						<p>찾아주셔서 감사합니다.</p>
					</div>
					<img src="img/7.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
						<h3>메뉴 주문</h3>
						<p>공부하면서 음료나 간식을 즐겨보세요.</p>
                        <button class="btn-1" onclick="window.open('order.jsp','window_name','width=1000,height=500,location=no,status=no,scrollbars=no');">주문하기</button>
					</div>
					<img src="img/6.png">
				</a>
			</li>
			<li class="slideitem">
				<a>
					
					<div class="textbox">
						<h3>좌석 예약</h3>
					<!--<p>세번째 슬라이드 입니다.</p>-->
                        <button class="btn-1" onclick="window.open('reserve.jsp','window_name','width=1000,height=500,location=no,status=no,scrollbars=no');">예약하기</button>
                    </div>
					<img src="img/8.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					<div class="textbox">
						<h3>게시판</h3>
						<p>건의사항을 남겨주세요.</p>
						<button class="btn-1" onclick="window.open('board_list.jsp','window_name','width=1000,height=500,location=no,status=no,scrollbars=no');">글쓰기</button>
					</div>
					<img src="img/10.png">
				</a>
			</li>	
			<!-- 좌,우 슬라이드 버튼 -->
			<div class="slide-control">
				<div>
					<label for="slide04" class="left"></label>
					<label for="slide02" class="right"></label>
				</div>
				<div>
					<label for="slide01" class="left"></label>
					<label for="slide03" class="right"></label>
				</div>
				<div>
					<label for="slide02" class="left"></label>
					<label for="slide04" class="right"></label>
				</div>
				<div>
					<label for="slide03" class="left"></label>
					<label for="slide01" class="right"></label>
				</div>
			</div>

		</ul>
		<!-- 페이징 -->
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
			<li><label for="slide04"></label></li>
		</ul>
	</div>	
</div>
<script
src="https://kit.fontawesome.com/503c31bf31.js"
crossorigin="anonymous">
// 아이콘 링크
</script>
</body>
</html>
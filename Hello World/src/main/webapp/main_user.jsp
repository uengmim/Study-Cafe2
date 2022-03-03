<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="Content-Type" content="text/html;">
    <link rel="stylesheet" href="css/style.css">
    <title>main_user</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>
<header class="screen-header">
    <h1 class="screen-header__title">백석 스터디카페</h1>
    <a class="nav__link" href="menu_User.html">
        <i class="fas fa-ellipsis-h fa-2x"></i>
    </a>
</header>
<style>
    th,td {
        border: 1px solid #bcbcbc;
        text-align: center;
    }
    table {
        width: 500px;
        height: 500px;
        margin : auto;

    }
    .seat_Title {
        text-align: center;
        font-size: 30px;
    }
</style>
<h1 class = seat_Title> 좌석 배치도</h1>
<table border="1" align="center">
    <tr> <!--1행-->
        <td class ="seat_01" onClick="location.href='buy_Ticket.html'" >01</td> <!--1행1열-->
        <td class ="seat_02" onClick="location.href='buy_Ticket.html'">02</td> <!--1행2열-->
        <td class ="seat_03" onClick="location.href='buy_Ticket.html'">03</td> <!--1행3열-->
        <td class ="seat_04" onClick="location.href='buy_Ticket.html'">04</td> <!--1행4열-->
        <td class ="seat_05" onClick="location.href='buy_Ticket.html'">05</td> <!--1행5열-->
        <td class ="seat_06" onClick="location.href='buy_Ticket.html'">06</td> <!--1행6열-->
        <td class ="seat_07" onClick="location.href='buy_Ticket.html'">07</td> <!--1행7열-->
        <td class ="seat_08" onClick="location.href='buy_Ticket.html'">08</td> <!--1행8열-->
    </tr>

    <tr> <!--2행-->
        <td class="seat_09" onClick="location.href='buy_Ticket.html'">09</td> <!--2행1열-->
        <td colspan ="6" style="border-bottom : none; "></td> <!--2행2열-->
        <td class="seat_10" onClick="location.href='buy_Ticket.html'">10</td> <!--2행8열-->
    </tr>

    <tr> <!--3행-->
        <td class="seat_11"  onClick="location.href='buy_Ticket.html'">11</td> <!--3행1열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--3행2열-->
        <td class="seat_12"  onClick="location.href='buy_Ticket.html'">12</td> <!--3행4열-->
        <td class="seat_13"  onClick="location.href='buy_Ticket.html'">13</td> <!--3행5열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--3행6열-->
        <td class="seat_14"  onClick="location.href='buy_Ticket.html'">14</td> <!--3행8열-->
    </tr>

    <tr> <!--4행-->
        <td class="seat_15"  onClick="location.href='buy_Ticket.html'">15</td> <!--4행1열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--4행2열-->
        <td class="seat_16"  onClick="location.href='buy_Ticket.html'">16</td> <!--4행4열-->
        <td class="seat_17"  onClick="location.href='buy_Ticket.html'">17</td> <!--4행5열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--4행6열-->
        <td class="seat_18"  onClick="location.href='buy_Ticket.html'">18</td> <!--4행8열-->
    </tr>

    <tr> <!--5행-->
        <td class="seat_19" onClick="location.href='buy_Ticket.html'">19</td> <!--5행1열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--5행2열-->
        <td class="seat_20" onClick="location.href='buy_Ticket.html'">20</td> <!--5행4열-->
        <td class="seat_21" onClick="location.href='buy_Ticket.html'">21</td> <!--5행5열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--5행6열-->
        <td class="seat_22" onClick="location.href='buy_Ticket.html'">22</td> <!--5행8열-->
    </tr>

    <tr> <!--6행-->
        <td class="seat_23" onClick="location.href='buy_Ticket.html'">23</td> <!--6행1열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--6행2열-->
        <td class="seat_24" onClick="location.href='buy_Ticket.html'">24</td> <!--6행4열-->
        <td class="seat_25" onClick="location.href='buy_Ticket.html'">25</td> <!--6행5열-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--6행6열-->
        <td class="seat_26" onClick="location.href='buy_Ticket.html'">26</td> <!--6행8열-->
    </tr>

    <tr> <!--7행-->
        <td class="seat_27" onClick="location.href='buy_Ticket.html'">27</td> <!--7행1열-->
        <td colspan="6" style="border-top : none; border-bottom: none;"></td> <!--7행2열-->
        <td class="seat_28" onClick="location.href='buy_Ticket.html'">28</td> <!--7행8열-->
    </tr>
    <tr> <!--8행-->
        <td class="seat_29" onClick="location.href='buy_Ticket.html'">29</td> <!--8행1열-->
        <td class="seat_30" onClick="location.href='buy_Ticket.html'">30</td> <!--8행2열-->
        <td class="seat_31" onClick="location.href='buy_Ticket.html'">31</td> <!--8행3열-->
        <td class="seat_32" onClick="location.href='buy_Ticket.html'">32</td> <!--8행4열-->
        <td colspan="3" style="border-top : none; ">출입구</td> <!--8행5열-->
        <td class="seat_33" onClick="location.href='buy_Ticket.html'">33</td> <!--8행8열-->
    </tr>
</table>



<script
        src="https://kit.fontawesome.com/503c31bf31.js"
        crossorigin="anonymous">
    // 아이콘 링크



</script>
</body>
</html>
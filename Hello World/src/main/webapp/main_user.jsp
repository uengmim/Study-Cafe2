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
    <h1 class="screen-header__title">�鼮 ���͵�ī��</h1>
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
<h1 class = seat_Title> �¼� ��ġ��</h1>
<table border="1" align="center">
    <tr> <!--1��-->
        <td class ="seat_01" onClick="location.href='buy_Ticket.html'" >01</td> <!--1��1��-->
        <td class ="seat_02" onClick="location.href='buy_Ticket.html'">02</td> <!--1��2��-->
        <td class ="seat_03" onClick="location.href='buy_Ticket.html'">03</td> <!--1��3��-->
        <td class ="seat_04" onClick="location.href='buy_Ticket.html'">04</td> <!--1��4��-->
        <td class ="seat_05" onClick="location.href='buy_Ticket.html'">05</td> <!--1��5��-->
        <td class ="seat_06" onClick="location.href='buy_Ticket.html'">06</td> <!--1��6��-->
        <td class ="seat_07" onClick="location.href='buy_Ticket.html'">07</td> <!--1��7��-->
        <td class ="seat_08" onClick="location.href='buy_Ticket.html'">08</td> <!--1��8��-->
    </tr>

    <tr> <!--2��-->
        <td class="seat_09" onClick="location.href='buy_Ticket.html'">09</td> <!--2��1��-->
        <td colspan ="6" style="border-bottom : none; "></td> <!--2��2��-->
        <td class="seat_10" onClick="location.href='buy_Ticket.html'">10</td> <!--2��8��-->
    </tr>

    <tr> <!--3��-->
        <td class="seat_11"  onClick="location.href='buy_Ticket.html'">11</td> <!--3��1��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--3��2��-->
        <td class="seat_12"  onClick="location.href='buy_Ticket.html'">12</td> <!--3��4��-->
        <td class="seat_13"  onClick="location.href='buy_Ticket.html'">13</td> <!--3��5��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--3��6��-->
        <td class="seat_14"  onClick="location.href='buy_Ticket.html'">14</td> <!--3��8��-->
    </tr>

    <tr> <!--4��-->
        <td class="seat_15"  onClick="location.href='buy_Ticket.html'">15</td> <!--4��1��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--4��2��-->
        <td class="seat_16"  onClick="location.href='buy_Ticket.html'">16</td> <!--4��4��-->
        <td class="seat_17"  onClick="location.href='buy_Ticket.html'">17</td> <!--4��5��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--4��6��-->
        <td class="seat_18"  onClick="location.href='buy_Ticket.html'">18</td> <!--4��8��-->
    </tr>

    <tr> <!--5��-->
        <td class="seat_19" onClick="location.href='buy_Ticket.html'">19</td> <!--5��1��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--5��2��-->
        <td class="seat_20" onClick="location.href='buy_Ticket.html'">20</td> <!--5��4��-->
        <td class="seat_21" onClick="location.href='buy_Ticket.html'">21</td> <!--5��5��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--5��6��-->
        <td class="seat_22" onClick="location.href='buy_Ticket.html'">22</td> <!--5��8��-->
    </tr>

    <tr> <!--6��-->
        <td class="seat_23" onClick="location.href='buy_Ticket.html'">23</td> <!--6��1��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--6��2��-->
        <td class="seat_24" onClick="location.href='buy_Ticket.html'">24</td> <!--6��4��-->
        <td class="seat_25" onClick="location.href='buy_Ticket.html'">25</td> <!--6��5��-->
        <td colspan="2" style="border-top : none; border-bottom: none;"></td> <!--6��6��-->
        <td class="seat_26" onClick="location.href='buy_Ticket.html'">26</td> <!--6��8��-->
    </tr>

    <tr> <!--7��-->
        <td class="seat_27" onClick="location.href='buy_Ticket.html'">27</td> <!--7��1��-->
        <td colspan="6" style="border-top : none; border-bottom: none;"></td> <!--7��2��-->
        <td class="seat_28" onClick="location.href='buy_Ticket.html'">28</td> <!--7��8��-->
    </tr>
    <tr> <!--8��-->
        <td class="seat_29" onClick="location.href='buy_Ticket.html'">29</td> <!--8��1��-->
        <td class="seat_30" onClick="location.href='buy_Ticket.html'">30</td> <!--8��2��-->
        <td class="seat_31" onClick="location.href='buy_Ticket.html'">31</td> <!--8��3��-->
        <td class="seat_32" onClick="location.href='buy_Ticket.html'">32</td> <!--8��4��-->
        <td colspan="3" style="border-top : none; ">���Ա�</td> <!--8��5��-->
        <td class="seat_33" onClick="location.href='buy_Ticket.html'">33</td> <!--8��8��-->
    </tr>
</table>



<script
        src="https://kit.fontawesome.com/503c31bf31.js"
        crossorigin="anonymous">
    // ������ ��ũ



</script>
</body>
</html>
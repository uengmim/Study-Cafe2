<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@ include file="jQueryMobile.inc" %>
</head>
<body>
    <%
    request.setCharacterEncoding("UTF-8");

    String rst = request.getParameter("rst");
    String msg = request.getParameter("msg");
    %>

    <section data-role="page">

        <section data-role"content">

            <frameset>
                <legend>에러 내용</legend>
                결과: <%= rst %><br>
                에러: <%= msg %>
                <input type="button" name="back" onClick="location.href='login2.jsp'" value="돌아가기">
            </frameset>
        </section>
    </section>
</body>
</html>
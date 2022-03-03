<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>회원가입</title>
        <link rel="stylesheet" href="css/join.css">
    </head>
    <body>
       
    <%@ page import="java.sql.*" %>
    <% request.setCharacterEncoding("UTF-8"); %>
    
            <form method="POST" action="join2.jsp">
            <div id="wrapper">
            <div id="content">
            <h1>회원가입</h1>
                    <div>
                        <h3> <label for="id">아이디</label> </h3>
                        <span class="box int_id">
                            <input type="text" name="US_ID" id="id" class="int" maxlength="20" placeholder='아이디를 입력하시오.'>
                        </span>
                    </div>
    
                    <div>
                        <h3> <label for="pswd1">비밀번호</label> </h3>
                        <span class="box int_pass">
                            <input type="password" name="US_PW" id="pswd1" class="int" maxlength="20">                       
                        </span>
                    </div>
                    
                    <div>
                        <h3><label for="pswd2">비밀번호 확인</label></h3>
                        <span class="box int_pass_check">
                            <input type="password" id="pswd2" class="int" maxlength="20">
                        </span>
                    </div>
                    
                    <div>
                        <h3><label for="name">이름</label></h3>
                        <span class="box int_name">
                            <input type="text" id="name" name="US_NM"class="int" maxlength="20" placeholder="이름을 적으시오.">
                        </span>
                    </div>
                    
                    <div>
                        <h3><label for="phoneNo">핸드폰번호</label></h3>
                        <span class="box int_mobile">
                            <input type="tel" id="mobile" name="US_NUM" class="int" maxlength="16" placeholder="핸드폰 번호를 입력하시오.">
                        </span>
                    </div>
    
                    <div>
                        <h3><label for="email">이메일</label></h3>
                        <span class="box int_email">
                            <input type="text" id="email" name="US_ADDR" class="int" maxlength="100" placeholder="이메일을 적으시오.">
                        </span>
                    </div>
    
                    <br>
                    <a href="#" class="btn1"> <input type="submit" id="btnJoin" onclick="join_success()" value="회원가입"> </a>
                    
                    <a href="#" class="btn2"></a><input type="reset" id="btnJoin" value="취소" onclick= "location.href = 'login2.jsp'"> </a>
            </div> 
        </form>
        <script>
            function join_success(){
                alert("회원가입이 완료되었습니다.");
            }
        </script>
        </body>
    </html>
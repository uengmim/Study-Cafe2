<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
  <head>
    <center>
    <title>게시판 리스트</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <script src="https://kit.fontawesome.com/503c31bf31.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script language = "javascript"> // 자바 스크립트 시작
    </script>
    <link rel="stylesheet" type="text/css" href="css/list.css">
  </head>
  
  <header class="screen-header">
    <h1 class="screen-header__title" onclick= "location.href = 'main_user(sub).jsp'" style="cursor:pointer">백석 스터디카페</h1>
    <a class="nav__link" href="menu_User.jsp">
      <i class="fas fa-arrow-left fa-2x"></i>
    </a>
  </header>
  
  <body>
  <div class="container">
    <div class="row">
      <table class="table table-striped" width="800" style="text-align: center; border: 1px;" >
        <thead>
          <tr>
            <th class="num">번호</th>
            <th class="title">제목</th>
            <th class="content">내용</th>
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
      String totalSql = "select count(*) from board;";  // 총 글갯수를 찾는 sql문
      ResultSet rs = stmt.executeQuery(totalSql);



      if(rs.next()){            // 결과가 있다면 true값을 반환합니다
        total = rs.getInt(1);   // total에 전체 글 갯수 값 대입
      }// total은 나중에 페이징 처리시 사용
      String listSql = "select BO_NUM, BO_TI, BO_CO from board;"; // 전체 리스트를 가져오는 sql문
      rs = stmt.executeQuery(listSql); // try catch에서 오류가없을시에 출력되는 내용입니다

  %>



  <%

  // total이 0일때, 곧 게시글이 아무것도 없을때 출력되는 내용입니다.

    if(total==0){

  %>

    <tr>

      <td>게시글이 존재하지 않습니다</td>

    </tr>

  <%

  // total이 0이 아닐때 변수를 선언해주고 출력되는 내용을 순서에 맞게 대입하는 내용입니다.

    } else{

      while(rs.next()){ //rs값이 있을때까지 반복합니다.

        int BO_NUM = rs.getInt(1);           // sql문의 첫번째 컬럼내용을 담습니다.

        String BO_TI = rs.getString(2);   // sql문의 두번째 컬럼내용을 담습니다.

        String BO_CO = rs.getString(3); // sql문의 세번째 컬럼내용을 담습니다.



  // 실제 리스트가 출력되는 부분 입니다.

  %>
      <tbody>
        <tr>
 
          <td><%=BO_NUM%>.</td>

        
          <td><a href="#"><%=BO_TI%></a></td>
          
        
          <td><%=BO_CO%></td>
    
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
</table>
<div class="page">
  <ul class="pagination modal">
    <li> <a href="#" class="first">처음 페이지</a></li>
    <li> <a href="#" class="arrow left"></a></li>
    <li> <a href="#" class="active num">1</a></li>
    <li> <a href="#" class="num">2</a></li>
    <li> <a href="#" class="num">3</a></li>
    <li> <a href="#" class="num">4</a></li>
    <li> <a href="#" class="num">5</a></li>
    <li> <a href="#" class="num">6</a></li>
    <li> <a href="#" class="num">7</a></li>
    <li> <a href="#" class="num">8</a></li>
    <li> <a href="#" class="num">9</a></li>
    <li> <a href="#" class="arrow right">>></a></li>
    <li><a href="#" class="last">끝 페이지</a></li>
  </ul>
</div>
</div>
</div>
<br><br>
<div id="write_btn">
  <a href="./board_write.jsp"><button>글 작성하기</button></a>
</div>

<div>
<select id='selSearchOption'>
  <option value='A'>제목+내용</option>
  <option value='T'>제목</option>
  <option value='C'>내용</option>
</select>
<input id='txtKeyWord' />
<input type='button' value='검색' />
</div>
</li>

  </table>
</center>
</body>
</html> 


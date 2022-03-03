



<!DOCTYPE html>
<html>

<head>
  <center>
    <title>게시판 글 작성</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" type="text/css" href="css/write.css" />
    <script src="https://kit.fontawesome.com/503c31bf31.js" crossorigin="anonymous"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script language = "javascript"> // 자바 스크립트 시작


      function Insert()
        {
        var insertFrm = document.insertFrm;
        if( !insertFrm.BO_TI.value ){
          alert( "글제목을 적어주세요" );
          insertFrm.BO_TI.focus();
          return;
         }

        if( !insertFrm.BO_CO.value ){
          alert( "글내용을 적어주세요" );
          insertFrm.BO_CO.focus();
          return;
         }
        insertFrm.submit();
        }
   </script>

  <style>
  .body{
    width:1100px;
    margin:50px auto 0;
    text-align: center;
  }
  .body, .body td, .body th{ border-collapse: collapse; border:1px solid black; box-sizing: border-box;}
  .body th{width:242px; padding:10px 0;}
  .body td{padding:10px 0;}
  #BO_TI{width:730px; height:30px;}
  #BO_CO{width:730px; height:300px;}
  .Btn{margin:30px auto 0; width:100px;}
  </style>

</head>

<body>
  <header class="screen-header">
    <h1 class="screen-header__title" onclick= "location.href = 'main_user(sub).jsp'">백석 스터디카페</h1>     
        <a class="nav__link" href="board_list.jsp">
            <i class="fas fa-arrow-left fa-2x"></i>
        </a> 
 </header>
  <div class="container">
    <div class="row">
      <form method="post" name="insertFrm" id="insertFrm" action="board_insert.jsp">
      <table class="table table-striped" style="text-align: center; border: 1px">
        <thead>
          <tr>
            <th colspan="2" style="background-color: #eeeeee; text-align: center;">글을 작성하세요.</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>제목</td>
            <td><input type="text" name="title" size="100" placeholder="제목을 입력하세요." name="BO_TI" maxlength="50"></td>
          </tr>
          <tr>
            <td>내용</td>
            <td><textarea name="content" cols="85" rows="15" placeholder="내용을 입력하세요." name="BO_CO" maxlength="3000"></textarea></td>
          </tr>
        </tbody>
      </table>
      
    </div>
  </div>

  <div class="Btn">
    <input type="submit" value="작성완료" id="insert" OnClick="javascript:Insert();">
  </div>
</form>
</body>
</center>
</html>

 
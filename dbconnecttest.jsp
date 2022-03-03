<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MariaDB 연결</title>
</head>
<body>
	<h3>데이터베이스 연결 테스트</h3>
	<%
		Connection conn = null;
		Statement state = null;
		ResultSet re = null;
		String driver = "org.gjt.mm.mysql.Driver";
		
		// 							db주소 : 포트번호/db명
		String url = "jdbc:mysql://localhost:3306/mysql21";
		String uId = "root";	// 유저 ID
		String uPw = "kbc0924";	// 유저 PW
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uId, uPw);
			if(conn != null){
				out.println("데이터베이스 연결 성공!!");
			}
			else{
				out.println("데이터베이스 연결 실패..");
			}
		}
		catch(Exception e){
			out.println(e.getMessage());
		}
		finally{
			conn.close();
		}
	%>
</body>
</html>

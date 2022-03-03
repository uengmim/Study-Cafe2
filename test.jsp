<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*" %>

<!-- 전역변수 선언 및 입력 매개변수값 추출 -->
<%
// 입력정보 한글 처리
request.setCharacterEncoding("UTF-8");
// 회원 관련 입력정보 추출
String seat      = request.getParameter("seat");
String time      = request.getParameter("time");
String date      = request.getParameter("date");
%>

<%
// DB 관련 객체
Connection        conn  = null; 
PreparedStatement pstmt = null;
ResultSet         rs    = null;
String            sql   = "";
String            rst   = "success";
String            msg   = "";
String driverName = "org.gjt.mm.mysql.Driver";
String dbURL = "jdbc:mysql://localhost:3306/mysql21";



try {

    
    Class.forName(driverName);
    conn = DriverManager.getConnection(dbURL, "root", "kbc0924");

	
	// 이미 등록된 좌석이 있는지 검사
	sql = "select * " + 
		  " from seat " + 
		  "where SE_NUM = ? ";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, seat);
	rs = pstmt.executeQuery();
	
	// 등록된 좌석이 있는 경우          
	if (rs.next()) {
	
		rst = "중복좌석";
		msg = "이미 등록된 좌석입니다!";
		
	// 등록된 아이디가 아닌 경우          
	} else {
	
		// 트랜잭션 내의 여러 테이블 수정을 위해 AutoCommit을 중지
		conn.setAutoCommit(false);
	
		// 좌석 등록 
		sql = "insert into seat(SE_NUM, SE_TIME, SE_DATE) " + 
			  " values (?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, seat);
		pstmt.setString(2, time);
		pstmt.setString(3, date);
		pstmt.executeUpdate();
		
		
		// 여러 테이블 수정 시 에러가 없으면 commit 처리
		conn.commit();
		
		
		
		
	} 
	


} catch(SQLException e) {
	// 여러 테이블 수정 시 에러가 있으면 rollback 처리
	conn.rollback();

	rst = "시스템에러";
	msg = e.getMessage();
} finally {
	if(pstmt != null) 
	   pstmt.close();
	if(conn != null) 
		conn.close();
}




// 수정 후, 조회화면으로 이동
if(rst.equals("success"))
	response.sendRedirect("mypage.jsp");
// DB 에러 시, 에러출력화면으로 이동 
else
	response.sendRedirect("reserve.jsp");
%>
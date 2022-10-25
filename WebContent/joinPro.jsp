<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, java.sql.* "%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	Connection con = null;
	PreparedStatement pstm = null;
	int cnt = 0;
	
	String dbid = "system";
	String dbpw = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String sql = "";
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "insert into membera values(?, ?, ?, ?, ?, sysdate)";
		pstm = con.prepareStatement(sql);
		pstm.setString(1, id);
		pstm.setString(2, pw);
		pstm.setString(3, name);
		pstm.setString(4, email);
		pstm.setString(5, tel);
		cnt = pstm.executeUpdate();
		
		if(cnt >= 1){
			System.out.println("성공");
			response.sendRedirect("./login.jsp");
		} else{
			System.out.println("실패");
			response.sendRedirect("./join.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		if(con != null) con.close();
		if(pstm != null) pstm.close();
	}
%>
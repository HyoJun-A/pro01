<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String id = request.getParameter("id");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from membera where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			out.println("<p>"+id+"</p>");
			out.println("<p>아이디가 중복 됩니다.</p>");
			response.sendRedirect("idCheck.jsp");
		} else {
			out.println("<p>"+id+"</p>");
			out.println("<p>사용이 가능한 아이디 입니다.</p>");
			out.println("<a href='javascript:apply(\""+id+"\")'>" + id + "[적용]</a>");
			out.println("<p>적용을 누르면, 입력하신 아이디를 사용할 수 있습니다.</p>");
		}
%>
	<script>
		function apply(fid){
			//부모.document.form이름.id.value = "값";
			opener.document.frm1.id.value = fid;
			opener.document.frm1.id2.value = "yes";
			window.close();
		}
	</script>
<%
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		try{
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(con!=null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
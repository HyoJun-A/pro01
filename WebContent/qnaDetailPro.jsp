<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");

	String qid = (String) session.getAttribute("id");
	// qnaDetail.jsp에서 가져온 데이터 	
	String qtitle = "";
	String content = request.getParameter("content2");
	int parno = Integer.parseInt(request.getParameter("parno"));
	String sec = request.getParameter("sec");
	
	int cnt = 0;

%>
<%@ include file="connectionPool.conf" %>
<%
	sql = "select * from qnaa where parno=? and lev=0";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, parno);
	rs = pstmt.executeQuery();
	
	if(rs.next()){
		qtitle = rs.getString("title");
		qtitle = qtitle + "의 답변";
	}
	
	rs.close();
	pstmt.close();
	
	rs = null;
	pstmt = null;
	
	
	sql ="insert into qnaa values(qseq.nextval, ?, ?, ?, sysdate, 1, ?, ?)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, qtitle);
	pstmt.setString(2, content);
	pstmt.setString(3, qid);
	pstmt.setInt(4, parno);
	pstmt.setString(5, sec);
	cnt = pstmt.executeUpdate();
	
	if(cnt > 0){
		response.sendRedirect("qnaDetail.jsp");
	} else{
		response.sendRedirect("qnaDetail.jsp");
	}
	
%>
<%@ include file="connectionClose2.conf" %>
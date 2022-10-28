<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String content = request.getParameter("content");
	String title = request.getParameter("title");
	
	int cnt = 0;
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "update faqa set title=?, content=? where parno=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setInt(3, no);
	cnt = pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("faqList.jsp");
	} else {
		response.sendRedirect("faqDetail.jsp?no="+no);
	}
%>
<%@ include file="connectionClose2.conf" %>
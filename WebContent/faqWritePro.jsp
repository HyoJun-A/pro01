<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	int cnt = 0;
	
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "insert into faqa values(fseq.nextval, ?, ?, 'admin', sysdate, 0, fseq.currval)";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, title);
	cnt = pstmt.executeUpdate();
	
	pstmt.close();
	con.close();
	
	cnt = 0;
	pstmt = null;
	con = null;
	
	sql = "insert into faqa values(fseq.nextval, ?, ?, 'admin', sysdate, 1, (select parno from faq where title=?))";
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, title);
	cnt = pstmt.executeUpdate();
%>
<%@ include file="connectionClose2.conf" %>
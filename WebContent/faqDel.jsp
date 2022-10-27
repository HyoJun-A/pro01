<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, java.sql.*" %>
<%
	int parno = Integer.parseInt(request.getParameter("parno"));
	int cnt = 0;
%>
<%@ include file="connectionPool2.conf" %>
<%
	sql = "delete from faqa where parno=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, parno);
	cnt = pstmt.executeUpdate();
	if(cnt > 0){
		response.sendRedirect("faqList.jsp");
	} else{
		response.sendRedirect("faqDetail.jsp");
	}
%>
<%@ include file="connectionClose2.conf" %>
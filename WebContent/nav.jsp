<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
%>
<nav class="tnb">
<% 
	if(id!=null && id.equals("admin")){
%>
	<div>
		<a href="./memList.jsp">회원관리</a>
		<a href="./boardList.jsp">게시판관리</a>
		<a href="./logout.jsp">로그아웃</a>
		<a href="./sitemap.jsp">사이트맵</a>
	</div>
	<link rel="stylesheet" href="./css/nav.css">
<% 
	} else if(id!=null) {
%>
	<div>
		<span class="name_print"><%=name %>님</span>
		<a href="./logout.jsp">로그아웃</a>
		<a href="./memInfo.jsp">회원정보</a>
		<a href="./sitemap.jsp">사이트맵</a>
	</div>	
	<link rel="stylesheet" href="./css/nav.css">
<%
	} else {
%>
	<div>
		<a href="./login.jsp">로그인</a>
		<a href="./term.jsp">회원가입</a>
		<a href="./sitemap.jsp">사이트맵</a>
	</div>
<% 
	}
%>
</nav>


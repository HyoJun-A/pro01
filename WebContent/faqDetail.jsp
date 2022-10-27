<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, java.sql.*" %>
<%
	String bid ="";
	if(session.getAttribute("id") != null){
		bid = (String) session.getAttribute("id");
	} else if(request.getParameter("id") != null) {
		bid = request.getParameter("id");
	}
	int parno = Integer.parseInt(request.getParameter("parno"));
%>
<%@ include file="connectionPool.conf" %>
<%

	sql = "select * from faqa where gubun=1 and parno=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, parno);
	rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="head.jsp" %>
	<style>
		.vs { clear:both; width: 100%; height:300px; overflow: hidden; }
	    .vs img { display:block; width: 100%; height:auto; }
	    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
	    .bread_fr { width: 1200px; margin: 0 auto; }
	    .page { clear:both; width: 100%; min-height:100vh;}
	    .page:after { content:""; display:block; clear:both; }
	    .page_wrap { width: 1200px; margin: 0 auto; }
	    .page_title { padding-top: 1em; text-align: center; }
	    .home { color:#333; }
	    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
	    .tb { display:table; margin:40px auto; width:1200px; border-collapse:collapse; }
	    .tb tr { display:table-row; }
	    .tb td, .tb th { display:table-cell; }
	    .tb th { height: 48px; border-bottom:1px solid #fff; color:#333; background-color:#EEE; 
	    width:200px; }
	    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
	    padding-left:80px; border-right:2px solid #333; }
	    .tb tr:first-child th { border-top:2px solid #333; }
	    .tb tr:first-child td { border-top:2px solid #333; }
	    .tb tr:last-child th { border-bottom:2px solid #333; }
	    .tb tr:last-child td { border-bottom:2px solid #333; }
	    .btn_group { clear:both; width:580px; margin:20px auto; float:left;}
		.btn_group .btn { display:block; float:left; margin:15px; min-width:100px; padding:4px; font-size:14px;
		line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
		.btn_group .btn.primary { background-color:#EEE; color:#333; }
		.btn_group .btn.primary:hover { background-color:#333; color:#fff;}
		.page_num { clear:both;}
	</style>
	<script>
	    $(document).ready(function(){
	        $(".to_top").attr("href", location.href);
	        $(window).scroll(function(){
	            var ht = $(window).height();
	            var tp = $(this).scrollTop();
	            if(tp>=300){
	                $(".to_top").addClass("on");
	                $(".to_top").attr("href", location.href);
	            } else {
	                $(".to_top").removeClass("on");
	                $(".to_top").attr("href", location.href);
	            }
	        });
	    });    
	    </script>
</head>
<body>
    <div class="wrap">
        <!-- TODO header -->
        <header class="hd">
            <div class="hd_wrap">
                <a href="./index.jsp" class="logo"><img src="./img/KIA_logo.png" alt="로고"></a>
                <%@ include file="nav.jsp" %>
                <%@ include file="header.jsp" %>
            </div>
        </header>
        <div class="content">
            <figure class="vs">
                <img src="./img/page2/기아스토어.png" alt="">
            </figure>
            <div class="bread">
	            <div class="bread_fr">
	                <a href="index.jsp" class="home">HOME</a> &gt;
	                <span class="sel">FAQ</span>
	            </div>
	        </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">FAQ</h2>
					<div class="tb_fr">
  					<table class="tb">
  					<%
  						if(rs.next()){
  					%>
  						<tbody>             
							<tr>
								<th>글 번호</th>
								<td><%=rs.getInt("parno") %></td>
							</tr>
							<tr>
								<th>질문</th>
								<td><%=rs.getString("title") %></td>
							</tr>
							<tr>
								<th>답변</th>
								<td><%=rs.getString("content") %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=rs.getString("author") %></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=rs.getString("resdate") %></td>
							</tr>
						</tbody> 
					</table> 
					<%
  						}
						if(bid.equals("admin")){
					%>
						<div class="btn_group">
							<a href='faqModify.jsp?parno=<%=rs.getInt("parno")%>' class="btn primary">답변 수정</a>
							<a href='faqDel.jsp?parno=<%=rs.getInt("parno")%>' class="btn primary">답변 삭제</a>
							<a href='faqList.jsp'class="btn primary" >FAQ목록</a>
						</div>
					<%
						} else {
					%>
						<div class="btn_group">
							<a href='faqList.jsp'class="btn primary" >FAQ목록</a>
						</div>
					<%
						}
					%>
					<%@ include file="connectionClose.conf" %>  
					</div> 
                </div>
            </section>
        </div>
		<script>
            var sel = document.getElementsByClassName("sel");
            for(var i=0;i<sel.length;i++){
                sel[i].addEventListener("change", function(){
                    location.href = this.value;
                });
            }
        </script>
        <!-- TODO footer -->
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
    <a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>
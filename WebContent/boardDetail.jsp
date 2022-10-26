<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connectionPool.conf" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	String bid = (String) session.getAttribute("id");

	sql = "select a.no ano, a.title title, a.content content, b.name name,to_char(a.resdate, 'yyyy-MM-dd') resdate, a.author author from boarda a inner join membera b on a.author=b.id where a.no=?";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
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
	    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
	    .tb tr { display:table-row; }
	    .tb td, .tb th { display:table-cell; }
	    .tb th { height: 48px; border-bottom:1px solid #fff; color:#fff; background-color:#333; 
	    width:120px; }
	    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
	    padding-left:80px; border-right:2px solid #333; }
	    .tb tr:first-child th { border-top:2px solid #333; }
	    .tb tr:first-child td { border-top:2px solid #333; }
	    .tb tr:last-child th { border-bottom:2px solid #333; }
	    .tb tr:last-child td { border-bottom:2px solid #333; }
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
	                <span class="sel">게시판</span>
	            </div>
	        </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">게시판</h2>
					<div class="tb_fr">
					<%
						if(rs.next()){
					%>
  					<table class="tb">
  						<tbody>             
							<tr>
								<th>글 번호</th>
								<td><%=rs.getInt("ano") %></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%=rs.getString("title") %></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><%=rs.getString("content") %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=rs.getString("name") %></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=rs.getString("resdate") %></td>
							</tr>
						</tbody> 
					</table>    
					<%
						} 
						if(bid.equals(rs.getString("author")) || bid.equals("admin")){
					%>
						<a href='boardModify.jsp?no=<%=rs.getInt("ano")%>'>글 수정</a>
						<a href='boardDel.jsp?no=<%=rs.getInt("ano")%>'>글 삭제</a>
					<%
						}
					%>
					</div> 
                </div>
            </section>
        </div>
		<%@ include file="connectionClose.conf" %>
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
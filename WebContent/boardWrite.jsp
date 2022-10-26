<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, java.sql.*" %>
<%
	String sid = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html lang="en">
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
	    .frm1 { padding: 24px; width: 960px; margin:50px auto; }
	    .tb { display:table; margin:40px auto; width:900px; border-collapse:collapse; }
	    .tb tr { display:table-row; }
	    .tb td, .tb th { display:table-cell; }
	    .tb th { height: 48px; border-bottom:1px solid #fff; color:#fff; background-color:#333; 
	    width:150px; box-sizing:border-box; }
	    .tb td { height: 48px; border-bottom:1px solid #333; text-align:left;
	     border-right:2px solid #333;
	    width:600px; box-sizing:border-box; padding:8px; }
	    .tb tr:first-child th { border-top:2px solid #333; }
	    .tb tr:first-child td { border-top:2px solid #333; }
	    .tb tr:last-child th { border-bottom:2px solid #333; }
	    .tb tr:last-child td { border-bottom:2px solid #333; }
		.btn_group { clear:both; width:580px; margin:20px auto; }
		.btn_group .btn { display:block; float:left; margin:20px; min-width:100px; padding:8px; font-size:14px;
		line-height:24px; border-radius:36px; border:2px solid #333; text-align:center; }
		.btn_group .btn.primary { background-color:#333; color:#fff; }
		.btn_group .btn.primary:hover { background-color:deepskyblue; }
		.in_data { display:block; float:left; line-height:36px; padding-left:6px; }
	    
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
                <h2 class="page_title">글 수정하기</h2>
  				<div class="frm1">
  					<form name="frm" action="boardWritePro.jsp" method="post" class="frm">
	  					<table class="tb">
	  						<tbody>             
								<tr>
									<th>제목</th>
									<td><input type="text" name="title" id="title" class="in_data"></td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<textarea cols="100" rows="8" name="content" id="content"></textarea>
									</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td><%=sid %>
									<input type="hidden" name="author" id="author" value="<%=sid %>"> 
									</td>
								</tr>
							</tbody> 
						</table>
						<div class="btn_group">
							<button type="submit" class="btn primary">글 쓰기</button>
							<a href="boardList.jsp" class="btn primary">게시판 목록</a>
						</div>
					</form>
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
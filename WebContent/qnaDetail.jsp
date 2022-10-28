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
	int parno = 0;
	if(request.getParameter("parno") != null){
		parno = Integer.parseInt(request.getParameter("parno"));
	}
	
	String and = "&";
	String author="";
	String qtitle="";
	int no = 0;
	int cnt = 0;
%>
<%@ include file="connectionPool.conf" %>
<%

	sql = "select * from qnaa where parno=?";
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

		
		.noti_lst {clear:both;  width:1200px; float:left; }
		.noti_lst li { clear:both; height:32px; border-bottom:1px solid #333;
        box-sizing:border-box; }
        .noti_lst li:first-child { border-top:2px solid #333; }
        .noti_lst li:last-child { border-bottom:2px solid #333; }
        .noti_lst li span { display:block; box-sizing:border-box; float:left;
        line-height: 32px; font-size:14px; }
        .noti_num { width: 150px; text-align:center; }
        .not_tit { width: 600px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; }
        .item_hd { font-weight:600; }
        .not_tit.item_hd { text-align: center; }
        .not_tit a { display: block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; padding-right: 12px; color:#333; }
        .noti_auth { width: 100px; text-align: center; }
        .noti_date { width: 300px; text-align: center; }
        .noit_cnt {font-weight:900; float:right;}
        .btn_group { clear:both; width:580px; margin:5px auto; float:left;}
		.btn_group .btn { display:block; float:left; margin:5px; min-width:80px; padding:2px; font-size:10px;
		line-height:12px; border-radius:18px; border:2px solid #333; text-align:center; }
		.btn_group .btn.primary { background-color:#EEE; color:#333; }
		.btn_group .btn.primary:hover { background-color:#333; color:#fff;}
		
		.frm1 { boder:2px solid #EEE; pading:12px; width: 1200px; margin:50px auto;}
		.btn.primary2 { background-color:#EEE; color:#333; border: 0px solid #fff; font-weight:900;}
		.btn.primary2:hover { text-shadow:0px 0px 3px #000;}
		.tb2 th { height: 74px; border-bottom:1px solid #fff; color:#333; background-color:#EEE; 
	    width:200px; border: 2px solid #333; text-align:center; border-radius:5px; font-size:15px;}
	    .tb2 td { width:1000px; border: 2px solid #333; font-size:13px;}
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
	                <span class="sel">Q<%=and %>A</span>
	            </div>
	        </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">Q<%=and %>A</h2>
                    <%
	  						while(rs.next()){
	  							
	  							if(rs.getInt("lev")==0){
	  								author=rs.getString("author");
		  							no = rs.getInt("parno");
	  					%>
                    <%
                    	if(bid.equals("admin") || bid.equals(author)){
					%>
							<div class="btn_group">
								<a href='qnaModify.jsp?parno=<%=no %>' class="btn primary">질문 수정</a>
								<a href='qnaDel.jsp?parno=<%=no %>' class="btn primary">질문 삭제</a>
								<a href='qnaList.jsp'class="btn primary" >Q<%=and %>A 목록</a>
							</div>
					<%
						} else {
					%>
							<div class="btn_group">
								<a href='qnaList.jsp'class="btn primary" >Q<%=and %>A 목록</a>
							</div>
					<%
						}
					%>
					<div class="tb_fr">
	  					<table class="tb">
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
  					<ul class="noti_lst">
						<li>
							<span class="noti_num item_hd">번호</span>
                          <span class="noti_auth item_hd">작성자</span>
                          <span class="noti_date item_hd">작성일</span>
                           <span class="not_tit item_hd">답변</span>
						</li>
 					<%
	  							}
 						if(rs.getInt("lev")==1){
 							cnt++;
 					%>
 						<li>
							<span class="noti_num"><%=cnt%></span>
							<span class="noti_auth"><%=rs.getString("author") %></span>
							<span class="noti_date"><%=rs.getDate("resdate") %></span>
							<span class="not_tit"><%=rs.getString("content") %></span>
						</li>

					</ul>
  					
  					<%	 }
	  					}
                    	
					%>
					<div class="frm1">
						<form action="qnaDetailPro.jsp" method="post" name="frm" id="frm">
							<table class="tb2">
								<tbody>
									<tr>
										<td>
											<textarea cols="150" rows="4" name="content2" id="content2"></textarea>
											<input type="hidden" id="parno" name="parno" value="<%=parno %>">
										</td>
										<th>
											<button type="submit" class="btn primary2">답변</button><br>	
										<th>
											<span>숨기기<input type="checkbox" name="sec" id="sec" value="n"></span>
										</th>
									</tr>
								</tbody>
							</table>	
						</form>
					</div>
					</div>
					<%@ include file="connectionClose.conf" %>  
                </div>
            </section>
        </div>
        <!-- TODO footer -->
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>
</html>
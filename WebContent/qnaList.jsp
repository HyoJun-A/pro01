<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, java.sql.*" %>
<%
	String fid ="";
	if(session.getAttribute("id") != null){
		fid = (String) session.getAttribute("id");
	} else if(request.getParameter("id") != null) {
		fid = request.getParameter("id");
	}
	
	Connection con = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	int cnt=0;
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		
		sql = "select * from qnaa";
		pstm = con.prepareStatement(sql);
		rs = pstm.executeQuery();	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="head.jsp" %>
    <style>
        /* TODO content.css */
        .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
	    .vs img { display:block; width: 100%; height:auto; }
	    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
	    .bread_fr { width: 1200px; margin: 0 auto; }
	    .page { clear:both; width: 100%; min-height:100vh;}
	    .page:after { content:""; display:block; clear:both; }
	    .page_wrap { width: 1200px; margin: 0 auto; }
        .content:target { display:block; }

        .page_title { padding-top: 1em; }
        .home { color:#333; }
        .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
        background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
        height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
        .to_top:hover { background-color: deepskyblue; }
        .to_top.on { visibility: visible; }

        .noti_lst {  width:1200px; float:left; }
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
        .Page_cnt {font-weight:900; float: left;}
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
	                <span class="sel">Q&A</span>
	            </div>
	        </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">Q&A</h2><br>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">글 번호</span>
                            <span class="not_tit item_hd">질문 제목</span>
                            <span class="noti_auth item_hd">작성자</span>
                            <span class="noti_date item_hd">작성일</span>
                        </li>
                      	<%
                      	while(rs.next()){ 
                      		if(rs.getInt("lev") == 0){
                      			cnt++;
                      			if(rs.getString("sec").equals("y")){
                      				if(fid.equals("admin") || fid.equals(rs.getString("author"))) {
                      	%>
                        <li>
							<span class="noti_num"><%=cnt%></span>
							<span class="not_tit">
								<a href='qnaDetail.jsp?parno=<%=rs.getInt("parno") %>'>
									<%=rs.getString("title") %>
								</a>
							</span>
							<span class="noti_auth"><%=rs.getString("author") %></span>
							<span class="noti_date"><%=rs.getDate("resdate") %></span>
						</li>
						<%
                      				} else {
						%>
						 <li>
							<span class="noti_num"><%=cnt%></span>
							<span class="not_tit">
									<%
										for(int i=0; i<rs.getString("title").length(); i++) out.println("*");
									%>
								</a>
							</span>
							<span class="noti_auth"><%=rs.getString("author") %></span>
							<span class="noti_date"><%=rs.getDate("resdate") %></span>
						</li>
						<%
                      				}
                      			} else {
                      	%>
                      	<li>
							<span class="noti_num"><%=cnt%></span>
							<span class="not_tit">
								<a href='qnaDetail.jsp?parno=<%=rs.getInt("parno") %>'>
									<%=rs.getString("title") %>
								</a>
							</span>
							<span class="noti_auth"><%=rs.getString("author") %></span>
							<span class="noti_date"><%=rs.getDate("resdate") %></span>
						</li>			
                      	<%			
                      			}
                      		}
                      	}
						%>
				</ul>
								
<% 
				if(fid != "") {
%>
				<div class="btn_group">
					<a href="faqWrite.jsp" class="btn primary">글 쓰기</a>
				</div>
<%
				}
} catch(Exception e){
	e.printStackTrace();
} finally{
	try{
		if(rs!=null) rs.close();
		if(pstm!=null) pstm.close();
		if(con!=null) con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>      
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
</html>
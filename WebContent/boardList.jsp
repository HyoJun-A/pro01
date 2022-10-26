<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, java.sql.*" %>
<%
	String bd_id ="";
	if(session.getAttribute("id") != null){
		bd_id = (String) session.getAttribute("id");
	} else if(request.getParameter("id") != null) {
		bd_id = request.getParameter("id");
	}
	
	Connection con = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	int cnt=0;
	int amount = 0;
	int pageCount = 0;
	int sNum = 0;
	int eNum = 0;
	int curPage = 1;
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		
		sql = "select count(*) as cnt from boarda";
		pstm = con.prepareStatement(sql);
		rs = pstm.executeQuery();
		if(rs.next()){
			amount = rs.getInt("cnt");
		}
		rs.close();
		pstm.close();
		
		pstm = null;
		rs = null;
		
		
		sql = "select * from boarda";
		pstm = con.prepareStatement(sql);
		rs = pstm.executeQuery();
		
		// 페이지 수 
		if(amount % 10 == 0){
			pageCount = amount/10;
		} else {
			pageCount = (amount/10) +1 ;
		}
		System.out.println(pageCount);
		
		// 첫번 째 수, 마지막 수
		for(int i = 1; i <= pageCount; i++){
			if(i == 1){
				sNum = 1;
				eNum = 9;
			} else{
				sNum = (i*10) - 9 ;
				eNum = i * 10;
			}
		}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="head.jsp" %>
    <link>
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
        .noit_cnt {font-weight:900; text-align: right;}
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
                    <p class="noit_cnt">총 글수 : <%=amount %></p>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">글 번호</span>
                            <span class="not_tit item_hd">글 제목</span>
                            <span class="noti_auth item_hd">작성자</span>
                            <span class="noti_date item_hd">작성일</span>
                        </li>
                       
<% 
	while(rs.next()){
		cnt++;
		if(bd_id == ""){
%>
						<li>
							<span class="noti_num"><%=cnt%></span>
							<span class="not_tit"><%=rs.getString("title") %></span>
							<span class="noti_auth"><%=rs.getString("author") %></span>
							<span class="noti_date"><%=rs.getDate("resdate") %></span>
						</li>
<%
		} else if(bd_id != "admin") {
%>
						<li>
							<span class="noti_num"><%=cnt%></span>
							<span class="not_tit"><a href='boardDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a></span>
							<span class="noti_auth"><%=rs.getString("author") %></span>
							<span class="noti_date"><%=rs.getDate("resdate") %></span>
						</li>
<%
		}
    }
%>	
				</ul>
								
<% 
				if(bd_id != "") {
%>
				<br><a href="boardWrite.jsp">글 쓰기</a>
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
</body>
</html>
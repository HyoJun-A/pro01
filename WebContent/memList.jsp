<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.* , java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	

	Connection con = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from membera";
		pstm = con.prepareStatement(sql);
		rs = pstm.executeQuery();
		
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
	    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
	    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
	    .tb tr { display:table-row; }
	    .tb td, .tb th { display:table-cell; }
	    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
	    color:#fff; background-color:#333; }
	    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
		.tb tr th:first-child { width:80px; text-align:center; }
		.tb tr th:nth-child(2) { width:160px; text-align:center; }
		.tb tr th:nth-child(3) { width:160px; text-align:center; }
		.tb tr th:last-child { text-align:center; }

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
        <!-- TODO content-page1-->
        <div class="content">
        <figure class="vs">
                <img src="./img/page2/기아스토어.png" alt="">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">회원목록</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">회원목록</h2>
  				<div class="tb_fr">
  					<table class="tb">
  						<thead>
  							<tr>
  								<th>연번</th>
  								<th>아이디</th>
  								<th>이름</th>
  								<th>가입일</th>
  							</tr>
  						</thead>
  						<tbody>             
<%
		int cnt = 0;
		while(rs.next()){
			cnt+=1;
%>
			<tr>
					<td><%=cnt %></td>
					<td><a href='./memInfo.jsp?id=<%=rs.getString("id") %>'><%=rs.getString("id") %></a></td>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getString("regdate") %></td>
			</tr>
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
						</tbody> 
					</table>
				</div>
			</div>
        </section>
    </div>
        <!-- TODO footer -->
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
    <a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>
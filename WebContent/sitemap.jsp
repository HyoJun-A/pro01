<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <%@ include file="head.jsp"%>
    <style>
         /* header.css */
    .hd { position:fixed; }

    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width:1200px; margin:50px auto; }
    .sitemap_area { width: 960px; margin: 30px auto; }
    .menu { clear:both; padding-bottom: 100px; }
    .menu:after { content:""; display:block; clear:both; }
    .menu > li { float:left; width: 20%; }
    .menu > li > a.dp1 { display:block; line-height: 48px; font-size:20px; color:#333; font-weight: bold; padding-top: 40px; }
    .menu .sub li { clear:both; padding-left: 16px; }
    .menu .sub li a { display:block; color:#555; font-size:16px; line-height: 36px; }
    .menu .sub li a:hover { text-decoration: underline; color:deepskyblue; }

    .menu2:before { content:"보조 메뉴"; display:block; clear:both; font-size:20px; font-weight:bold; padding-bottom: 20px; }
    .menu2 li { float:left; line-height: 60px; }
    .menu2 li a { display:block; color:#555; }
    .menu2 li a:hover { text-decoration: underline; color:deepskyblue; } 
    </style>
    <link rel="stylesheet" href="/css/footer.css">
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
                    <a href="./index.jsp" class="home">HOME</a> &gt;
                    <span class="sel">회원 약관</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">사이트맵</h2>
                    <div class="frm">
                        <nav class="sitemap_area">
                            <ul class="menu menu1">
                                <li class="item1">
                                    <a href="./company.jsp#page1" class="dp1">기업소개</a>
                                    <ul class="sub">
                                        <li><a href="./company.jsp#page1">기업정보</a></li>
                                        <li><a href="./company.jsp#page2">공장별 일반현황</a></li>
                                        <li><a href="./company.jsp#page3">이사회</a></li>
                                    </ul>
                                </li>
                                <li class="item2">
                                    <a href="./car.jsp#page1" class="dp1">차량</a>
                                    <ul class="sub">
                                        <li><a href="./car.jsp#page1">EV/PBV</a></li>
                                        <li><a href="./car.jsp#page2">승용</a></li>
                                        <li><a href="./car.jsp#page3">RV</a></li>
                                    </ul>
                                </li>
                                <li class="item3">
                                    <a href="./service.jsp#page1" class="dp1">구매</a>
                                    <ul class="sub">
                                        <li><a href="./service.jsp#page1">상품추천</a></li>
                                        <li><a href="./service.jsp#page2">카탈로그/가격표</a></li>
                                        <li><a href="./service.jsp#page3">구매가이드</a></li>
                                    </ul>
                                </li>
                                <li class="item4">
                                    <a href="./experience.jsp#page1" class="dp1">체험</a>
                                    <ul class="sub">
                                        <li><a href="./experience.jsp#page1">플래그십</a></li>
                                        <li><a href="./experience.jsp#page2">kia360</a></li>
                                        <li><a href="./experience.jsp#page3">전시차조회</a></li>
                                    </ul>
                                </li>
                                <li class="item5">
                                    <a href="./custom.jsp#page1" class="dp1">고객지원</a>
                                    <ul class="sub">
                                        <li><a href="./custom.jsp#page1">FAQ</a></li>
                                        <li><a href="./custom.jsp#page2">온라인상담</a></li>
                                        <li><a href="./custom.jsp#page3">칭찬알림방</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="menu menu2">
                                <li><a href="./login.jsp">로그인</a></li>
                                <li><a href="./join.jsp">회원가입</a></li>
                                <li><a href="./sitemap.jsp">사이트맵</a></li>
                                <li><a href="./member01.jsp" class="dpc">개인정보 처리 방침</a></li>
                                <li><a href="./member02.jsp" class="dpc">이용약관</a></li>
                                <li><a href="./member03.jsp">이메일무단수집거부</a></li>
                            </ul>
                        </nav>
                    </div>
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

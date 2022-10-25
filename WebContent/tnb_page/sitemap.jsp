<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIA</title>
    <!-- 오픈그래프 -->
    <meta property="og:site_name" content="KIA">
    <meta property="og:title" content="KIA">
    <meta property="og:url" content="/">
    <meta property="og:type" content="website">
    <meta property="og:description" content="">
    <meta property="og:image" content="/img/KIA_logo.png">
    <meta property="og:image:width" content="800">
    <meta property="og:image:height" content="400">
    <!-- 파비콘 -->
    <link rel="shortcut icon" type="image/x-icon" href="/img/KIA_logo.png">
    <!-- 각 종 플러그인과 설정 파일 -->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 구형 브라우저 html5태그 인식 -->
    <script src="/js/html5shiv.js"></script>
    <!-- 구형 브라우저에서 css animation 인식 -->
    <script src="/js/prefixfree.min.js"></script>
    <!-- 구형 브라우저에서 미디어쿼리 인식 -->
    <script src="/js/respond.min.js"></script>
    <!-- jquery 플러그인 연결 -->
    <script src="/js/jquery-1.11.1.js"></script>
    <link rel="stylesheet" href="/css/reset2.css">
    <link rel="stylesheet" href="/css/header.css">
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
        </style>
        <script>
           
        </script>
</head>
<body>
    <div class="wrap">
        <!-- TODO header -->
        <header class="hd">
            <div class="hd_wrap">
                <a href="" class="logo"><img src="/img/KIA_logo.png" alt="로고"></a>
                <nav class="tnb">
                    <a href="/tnb_page/login.jsp">로그인</a>
                    <a href="/tnb_page/join.jsp">회원가입</a>
                    <a href="/tnb_page/sitemap.jsp">사이트맵</a>
                </nav>
                <nav class="gnb">
                    <ul>
                        <li class="item1">
                            <a href="" class="dp1">기업소개</a>
                            <ul class="sub">
                                <li><a href="/subPage/company.jsp#page2" class="page1">기업정보</a></li>
                                <li><a href="/subPage/company.jsp#page2" class="page2">공장별 일반현황</a></li>
                                <li><a href="/subPage/company.jsp#page3" class="page3">소개영상 및 이미지</a></li>
                            </ul>
                        </li>
                        <li class="item2">
                            <a href="" class="dp1">차량</a>
                            <ul class="sub">
                                <li><a href="/subPage/product.jsp#page1" class="page1">EV/PBV</a></li>
                                <li><a href="/subPage/product.jsp#page2" class="page2">승용</a></li>
                                <li><a href="/subPage/product.jsp#page3" class="page3">RV</a></li>
                            </ul>
                        </li>
                        <li class="item3">
                            <a href="" class="dp1">구매</a>
                            <ul class="sub">
                                <li><a href="/subPage/service.jsp#page1" class="page1">상품추천</a></li>
                                <li><a href="/subPage/service.jsp#page2" class="page2">카탈로그/가격표</a></li>
                                <li><a href="/subPage/service.jsp#page3" class="page3">구매가이드</a></li>
                            </ul>
                        </li>
                        <li class="item4">
                            <a href="" class="dp1">체험</a>
                            <ul class="sub">
                                <li><a href="/subPage/experience.jsp#page1" class="page1">국내사업장안내</a></li>
                                <li><a href="/subPage/experience.jsp#page2" class="page2">kia360</a></li>
                                <li><a href="/subPage/experience.jsp#page3" class="page3">전시차조회</a></li>
                            </ul>
                        </li>
                        <li class="item5">
                            <a href="" class="dp1">고객지원</a>
                            <ul class="sub">
                                <li><a href="/subPage/custom.jsp#page1" class="page1">FAQ</a></li>
                                <li><a href="/subPage/custom.jsp#page2" class="page2">온라인상담</a></li>
                                <li><a href="/subPage/custom.jsp#page3" class="page3">칭찬알림방</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- TODO content-page1-->
        <div class="content">
            <figure class="vs">
                <img src="/img/page2/기아스토어.png" alt="">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
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
                                    <a href="" class="dp1">회사소개</a>
                                    <ul class="sub">
                                        <li><a href="company.jsp#page1">인사말</a></li>
                                        <li><a href="company.jsp#page2">회사연혁</a></li>
                                        <li><a href="company.jsp#page3">오시는길</a></li>
                                    </ul>
                                </li>
                                <li class="item2">
                                    <a href="" class="dp1">제품소개</a>
                                    <ul class="sub">
                                        <li><a href="product.jsp#page1">LCD 디스플레이</a></li>
                                        <li><a href="product.jsp#page2">건물 경관 연출</a></li>
                                        <li><a href="product.jsp#page3">LED 광고</a></li>
                                    </ul>
                                </li>
                                <li class="item3">
                                    <a href="" class="dp1">서비스</a>
                                    <ul class="sub">
                                        <li><a href="service.jsp#page1">온라인 가이드</a></li>
                                        <li><a href="service.jsp#page2">최초 설치 서비스</a></li>
                                        <li><a href="service.jsp#page3">추가 부품 택배 서비스</a></li>
                                        <li><a href="service.jsp#page4">이동 설치 서비스</a></li>
                                    </ul>
                                </li>
                                <li class="item4">
                                    <a href="" class="dp1">고객센터</a>
                                    <ul class="sub">
                                        <li><a href="custom.jsp#page1">자주하는 질문</a></li>
                                        <li><a href="custom.jsp#page2">질문 및 답변</a></li>
                                        <li><a href="custom.jsp#page3">공지사항</a></li>
                                        <li><a href="custom.jsp#page4">온라인 상담</a></li>
                                    </ul>
                                </li>
                                <li class="item5">
                                    <a href="" class="dp1">설치 사례</a>
                                    <ul class="sub">
                                        <li><a href="install.jsp#page1">기업별</a></li>
                                        <li><a href="install.jsp#page2">시설별</a></li>
                                        <li><a href="install.jsp#page3">기기별</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="menu menu2">
                                <li><a href="login.jsp">로그인</a></li>
                                <li><a href="join.jsp">회원가입</a></li>
                                <li><a href="sitemap.jsp">사이트맵</a></li>
                                <li><a href="member01.jsp" class="dpc">개인정보 처리 방침</a></li>
                                <li><a href="member02.jsp" class="dpc">이용약관</a></li>
                                <li><a href="member03.jsp">이메일무단수집거부</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </section>
    </div>
        <!-- TODO footer -->
        <footer class="ft">
            <div class="ft_wrap">
                <div class="ft_logo"><img src="/img/KIA_logo2.png" alt="하단로고"></div>
                <div class="mid_box">
                    <nav class="fnb">
                        <a href="member01.jsp">개인정보 처리 방침</a>
                        <a href="member02.jsp">이용약관</a>
                        <a href="member03.jsp">이메일무단수집거부</a>
                    </nav>
                    <p class="addr">
                        KIA | 대표이사 | 최준영/송호성 사업자등록번호:119-81-02316<br>
                        서울시 서초구 헌릉로 12 | 02)3464-1114<br>
                        본사팩스번호 : 02-3461-6817<br>
                        기아주식회사(이하 '기아' 또는 '회사')는 고객의 개인정보 보호를 위해 최선을 다하고 있습니다.
                    </p>
                    <p class="copyright">© Kia Corp. All rights reserved</p>
                </div>
                <div class="sel_box">
                    <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
                        <option value="">패밀리사이트</option>
                        <option value="https://play.kia.com/main.do">기아블로그</option>
                        <option value="https://drivingexperience.hyundai.co.kr/kr/program/driving-experience/kia">기아드라이빙아카데미</option>
                    </select>
                </div>
                <script>
                function sel_link(sel){
                    location.href = sel.value;
                }
                </script>
            </div>
        </footer>
    </div>

</body>
</html>

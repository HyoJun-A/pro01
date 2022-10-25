<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .content { display:none; }
        .content:target { display:block; }

        .page_title { padding-top: 1em; }
        .home { color:#333; }
        .to_top { position:fixed; bottom:80px; right:80px; z-index:999; 
        background-color:rgba(11,11,11,0.75); color:#fff; display:block; width: 60px;
        height: 60px; line-height: 60px; text-align: center; font-size:20px; border-radius:32px; visibility:hidden; transition-duration:0.8s; }
        .to_top:hover { background-color: deepskyblue; }
        .to_top.on { visibility: visible; }

        /* TODO page1 */
        .faq { width: 1000px;}
        .faq .faq_title { text-align: center; font-size: 30px; margin-bottom: 30px;}
        .faq .faq_lst { clear: both; display: block; text-align: left; margin-left: 100px;}
        .faq .faq_lst li { margin-bottom: 30px; border-bottom: 3px solid #333;}
        .faq .faq_lst li span {  margin-bottom: 30px; padding-left: 0.5em; padding-bottom: 0.5em;}
        
        /* TODO page2 */
        .coun { width: 1000px; display: block; clear: both;}
        .coun .coun_lst { text-align: center;}
        .coun .coun_lst .coun_tit { font-size: 15px; margin-top: 1em; font-weight: 900;}
        .coun .coun_lst .coun_com1 { width: 500px; height: 50px; background-color: #EEE; margin: 30px;}
        .coun .coun_lst .coun_com { width: 500px; height: 200px; background-color: #EEE; margin: 30px;}

        /* TODO page3 */
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
        <div class="content" id="page1">
            <figure class="vs">
                <img src="./img/page2/기아스토어.png" alt=""></video>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="./index.jsp" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option value="company.jsp#page1">기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option selected>고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option selected>FAQ</option>
                        <option value="custom.jsp#page2">온라인상담</option>
                        <option value="custom.jsp#page3">게시판</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">FAQ</h2>
                    <br><hr><br>
                    <div class="faq">
                        <h2 class="faq_title">Top10 FAQ</h2>
                        <ul class="faq_lst">
                            <li>
                                <span class="faq_tit">O Kia Digital Key(NFC)란 무엇인가요?</span>
                            </li>
                            <li>
                                <span class="faq_tit">O 직영 서비스센터 운영 시간은 어떻게 됩니까?</span>
                            </li>
                            <li>
                                <span class="faq_tit">O 사용설명 분실했는데 어떻게 재발급 받을 수 있나요?</span>
                            </li>
                            <li>
                                <span class="faq_tit">O 내 차 관리를 위한 필수 앱, MyKia는 어떤 서비스 인가요?</span>
                            </li>
                            <li>
                                <span class="faq_tit">O 기아 통합 계정이 무엇인가요?</span>
                            </li>
                            <li>
                                <span class="faq_tit">O 일반 리모컨 또는 스마트 키 차량의 핸들 락(잠김) 해제 방법을 알려주세요</span>
                            </li><li>
                                <span class="faq_tit">O 전자식 파킹 브레이크(EPB) 기능이 무엇인가요?</span>
                            </li><li>
                                <span class="faq_tit">O 버튼시동 스마트 키 차량의 경우 중립 주차는 어떻게 합니까?</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <!-- TODO content-page2-->
        <div class="content" id="page2">
            <figure class="vs">
                <img src="./img/page2/기아스토어.png" alt=""></video>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="./index.jsp" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option value="company.jsp#page1">기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option selected>고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option value="custom.jsp#page1">FAQ</option>
                        <option selected>온라인상담</option>
                        <option value="custom.jsp#page3">온라인상담</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">온라인상담</h2>
                    <br><hr><br>
                    <div class="coun">
                        <ul class="coun_lst">
                            <li>
                                <p class="coun_tit">문의유형*</p>
                                <p class="countsub"><input type="text" class="coun_com1"></p>
                            </li>
                            <li>
                                <p class="coun_tit">제목*</p>
                                <p class="countsub"><input type="text" class="coun_com"></p>
                            </li>
                            <li>
                                <p class="coun_tit">문의내용*</p>
                                <p class="countsub"><input type="text" class="coun_com"></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <!-- TODO content-page3-->
        <div class="content" id="page3">
            <figure class="vs">
                <img src="./img/page2/기아스토어.png" alt=""></video>
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="./index.jsp" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option value="company.jsp#page1">기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option selected>고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option value="custom.jsp#page1">FAQ</option>
                        <option value="custom.jsp#page2">온라인상담</option>
                        <option selected>게시판</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">게시판</h2>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">글 번호</span>
                            <span class="not_tit item_hd">글 제목</span>
                            <span class="noti_auth item_hd">작성자</span>
                            <span class="noti_date item_hd">작성일</span>
                        </li>
                        <li><span class="noti_num">서비스</span><span class="not_tit"><a href="">북구 고성점 서비스 만족합니다.</a></span><span class="noti_auth">김*태</span><span class="noti_date">2022-10-18</span></li>
                        <li><span class="noti_num">영업</span><span class="not_tit"><a href="">김찬 엔지니어를 칭찬합니다.</a></span><span class="noti_auth">안*준</span><span class="noti_date">2022-10-18</span></li>
                        <li><span class="noti_num">서비스</span><span class="not_tit"><a href="">기아 오토큐 석남점 이상훈님을 칭찬합니다.</a></span><span class="noti_auth">최*근</span><span class="noti_date">2022-10-18</span></li>
                        <li><span class="noti_num">영업</span><span class="not_tit"><a href="">친절한 상담으로 궁금증 해결</a></span><span class="noti_auth">조*흥</span><span class="noti_date">2022-10-18</span></li>
                        <li><span class="noti_num">서비스</span><span class="not_tit"><a href="">방배지점 팀장님 감사합니다.</a></span><span class="noti_auth">차*주</span><span class="noti_date">2022-10-18</span></li>
                        <li><span class="noti_num">영업</span><span class="not_tit"><a href="">수현 엔지니어를 칭찬합니다.</a></span><span class="noti_auth">임*두</span><span class="noti_date">2022-10-18</span></li>
                        <li><span class="noti_num">서비스</span><span class="not_tit"><a href="">파주지점 팀장님 감사합니다.</a></span><span class="noti_auth">촤*영</span><span class="noti_date">2022-10-18</span></li>
                        <li><span class="noti_num">서비스</span><span class="not_tit"><a href="">민수 엔지니어를 칭찬합니다.</a></span><span class="noti_auth">부*임</span><span class="noti_date">2022-10-18</span></li>
                    </ul>
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
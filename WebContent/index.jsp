<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="head.jsp"%>
    <style>
        /* TODO content.css */
        .content { clear: both; width: 100%; }
        .vs { clear:both; width: 100%; height:100vh; overflow:hidden; }
        .vdo { display:block; width:100%; height:auto; }
        .page { clear:both; width: 100%; }
        .page_wrap { width: 1200px; margin: 0 auto; }
        #page1, #page3 { background-color:#ececec; }
        .page_tit { text-align: center; font-size:32px; padding-top:1.2em; padding-bottom: 0.8em; }
        .lst { clear:both; width: 1200px; }
        .lst:after { content:""; display:block; clear: both;}
        .lst li { margin-bottom: 40px; }
        .lst li.left { float:left; width: 816px; height: 459px; }
        .lst li.right { float:right; width:350px; height: 459px; }
        .ico_lst { clear:both; width: 100%; overflow:hidden; }
        .ico_lst li a { display:block; background-repeat: no-repeat; 
        background-position:0px center; background-size:auto 80%; 
        padding-left: 55px; }
        .ico_lst li a.icon1 { background-image: url("./img/icons8-video-64.png"); }
        .ico_lst li a.icon2 { background-image: url("./img/icons8-video-64.png");}
        .ico_lst li a.icon3 { background-image: url("./img/icons8-video-64.png"); }
        .cate_tit { color:#222; font-size:20px; padding-bottom: 0.5em; }
        .cate_com { color:#222; font-size:14px; overflow:hidden;
        white-space:nowrap; text-overflow:ellipsis; }

        #page2 { background-color: rgba(230, 248, 255, 0.5); }
        .pic_lst { clear:both; width: 100%; padding-bottom: 80px; }
        .pic_lst:after { content:""; display:block; clear:both; }
        .pic_lst li { float:left; position:relative; margin-bottom: 40px; }
        .pic_lst li a { display:block; width: 360px; margin-right: 40px;
        overflow: hidden; height: 300px; }
        .pic_lst li a img { display:block; width:600px; margin-left: -120px; transition-duration:0.8s; }
        .pic_lst li a:hover img { margin-left: 0; }
        .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
        .pic_lst li a:hover .hv_box { opacity:1; }
        .pic_tit { position:absolute; top:30px; left: 30px; 
        text-shadow:0px 0px 3px red; }
        .pic_com { position:absolute; right:30px; bottom:30px; 
            text-shadow:0px 0px 3px blue; }

        #page3 { background-repeat: no-repeat; 
        background-size: cover; 
        background-position:center center; height: 100vh; background-image:url("./img/bg_partners.jpg"); overflow:hidden; }
        #page3 .page_wrap { width: 100%; }
        .circle_lst { clear:both; width: 4980px; }
        .circle_lst li { width: 230px; height: 230px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff;
        float:left; margin:28px;  }
        .circle_lst.lst2 li { float:right; }
        .circle_lst li a { display:block; width: 100%; height: 100%; }
        .circle_lst li a img { display:block; width:220px; height:auto; 
        position:absolute; top:50%; left: 5px; z-index:11; margin-top: -55px; }
        </style>
        <script>
        $(document).ready(function(){
            $(window).scroll(function(){
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if(tp>=600){
                    $(".hd").css("position","fixed");
                    $(".hd").css("background-color", "rgba(255, 255, 255, 1)");
                } else {
                    $(".hd").css("position","absolute");
                    $(".hd").css("background-color", "rgba(255, 255, 255, 0)");
                    $(".hd").hover(function(){
                        $(this).css("background-color", "rgba(255, 255, 255, 1)")
                    });
                }
            });
            $
            $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
            $lst1_obj = $(".circle_lst li").clone();
            $(".circle_lst.lst2").append($lst1_obj);
        });    
        </script>
</head>
<body>
    <div class="wrap">
        <!-- TODO header -->
        <header class="hd">
            <div class="hd_wrap">
                <a href="" class="logo"><img src="./img/KIA_logo.png" alt="로고"></a>
                <%@ include file="nav.jsp" %>
                <%@ include file="header.jsp" %>
            </div>
        </header>
        <!-- TODO content -->
        <div class="content">
            <figure class="vs">
                <video src="./video/기아자동차 역사, 글로벌 자동차 회사가 되기까지 (savefrom.kr).mp4" autoplay muted class="vdo" width="100%" height=auto></video>
            </figure>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h2 class="page_tit">The KIA</h2>
                    <ul class="lst">
                        <li class="left">
                            <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/embed/yzcxRjQ9m2w" title="차량소개" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </li>
                        <li class="right">
                            <ul class="ico_lst">
                                <li>
                                    <a href="https://www.youtube.com/embed/zmMNxm26ukg" target="vdo2" class="icon1">
                                        <h3 class="cate_tit">EV6</h3>
                                        <p class="cate_com">새로운여정의시작</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/OpDZJRJ6W1Y" target="vdo2" class="icon2">
                                        <h3 class="cate_tit">EV6GT</h3>
                                        <p class="cate_com">고성능전기차의시작</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/embed/q96KKjfwHEE" target="vdo2" class="icon3">
                                        <h3 class="cate_tit">Seleto</h3>
                                        <p class="cate_com">More Safe | More Smart | More Inspiring</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page2">
                <div class="page_wrap">
                    <h2 class="page_tit">KIA<br>새로운 도전</h2>
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <img src="./img/page2/page2_kia.jpg" alt="2022월드IT쇼" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">2022월드IT쇼</h3>
                                    <p class="pic_com">KIA</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/page2_kia2.jpg" alt="서울모빌리티쇼" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">서울모빌리티쇼</h3>
                                    <p class="pic_com">KIA</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/기아RV캠핑존.jpg" alt="기아RV캠핑존" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">기아RV캠핑존</h3>
                                    <p class="pic_com">KIA</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/비트360.jpg" alt="비트360" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">비트360</h3>
                                    <p class="pic_com">KIA</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/기아3602.jpg" alt="비트360" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">비트360</h3>
                                    <p class="pic_com">비트360</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/기아스토어.png" alt="기아스토어" class="pic" height="100%">
                                <div class="hv_box">
                                    <h3 class="pic_tit">기아스토어</h3>
                                    <p class="pic_com">KIA</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/기아스토어2.png" alt="기아스토어" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">기아스토어</h3>
                                    <p class="pic_com">기아스토어</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/기아360.jpg" alt="기아360" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">기아360</h3>
                                    <p class="pic_com"></p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="./img/page2/기아3602.jpg" alt="기아360" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_tit">기아360</h3>
                                    <p class="pic_com">KIA</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page3">
                <div class="page_wrap">
                    <h2 class="page_tit">The KIA <br> Car</h2>
                    <ul class="circle_lst lst1">
                        <li><a href=""><img src="./img/EV&PBV/bongo3-ev-frozen-s_q_ud.png" alt="파트너스01" class="thumb"></a></li>
                        <li><a href=""><img src="./img/EV&PBV/bongo3-ev-power_q_ud.png" alt="파트너스02" class="thumb"></a></li>
                        <li><a href=""><img src="./img/EV&PBV/bongo3-ev_q_ud.png" alt="파트너스03" class="thumb"></a></li>
                        <li><a href=""><img src="./img/EV&PBV/ev6-gt_q_klm.png" alt="파트너스04" class="thumb"></a></li>
                        <li><a href=""><img src="./img/EV&PBV/ev6_q_glb.png" alt="파트너스05" class="thumb"></a></li>
                        <li><a href=""><img src="./img/EV&PBV/niro-ev_q_swp.png" alt="파트너스06" class="thumb"></a></li>
                        <li><a href=""><img src="./img/riding/k3-gt_q_cr5.png" alt="파트너스07" class="thumb"></a></li>
                        <li><a href=""><img src="./img/riding/k3_q_m4b.png" alt="파트너스08" class="thumb"></a></li>
                        <li><a href=""><img src="./img/riding/k5_q_agt.png" alt="파트너스09" class="thumb"></a></li>
                        <li><a href=""><img src="./img/riding/k8_q_klg.png" alt="파트너스10" class="thumb"></a></li>
                        <li><a href=""><img src="./img/riding/k9_q_d9b.png" alt="파트너스11" class="thumb"></a></li>
                        <li><a href=""><img src="./img/riding/morning_q_b2y.png" alt="파트너스12" class="thumb"></a></li>
                        <li><a href=""><img src="./img/SUV/carnival-hilimousine_q_abp.png" alt="파트너스13" class="thumb"></a></li>
                        <li><a href=""><img src="./img/SUV/carnival_q_d2u.png" alt="파트너스14" class="thumb"></a></li>
                        <li><a href=""><img src="./img/SUV/mohave_q_abp.png" alt="파트너스15" class="thumb"></a></li>
                        <li><a href=""><img src="./img/SUV/niro-hybrid_q_cge.png" alt="파트너스16" class="thumb"></a></li>
                        <li><a href=""><img src="./img/SUV/seltos_q_swp.png" alt="파트너스17" class="thumb"></a></li>
                    </ul>
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
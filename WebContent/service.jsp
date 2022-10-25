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
        .car_service { width: 100%; height: auto; margin-top: 50px;}
        .car_service .car_lst { clear: both; width: 100%;}
        .car_service .car_lst li { width: 100%; float: left; position: relative; display: block;}
        .car_service .car_lst li .car_over { position: relative; margin: 0px auto; text-align: center;}
        .car_service .car_lst li .car_over button { overflow: hidden; font-size: 1px; height: 50px; width: 50px; background-color: transparent; border: none; cursor: pointer;} 
        .car_service .car_lst img { float: left; width: 100%; height: auto;}
        .car_service .car_lst #car2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_service .car_lst #car3 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_service .car_lst #car4 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_service .car_lst #car5 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_service .car_lst h3 { float: left; width: 100%; margin-top: 20px; text-align: 3em; font-size: 30px; margin-bottom: 30px;}
        .car_service .car_lst li .gt_title { clear: both; display: block; text-align: center; width: 100%; float: left; margin-top: 50px; margin-bottom: 1em; font-size: 20px;}
        .car_service .car_lst li .gt_subTitle { width: 100%; text-align: center; font-size: 50px; font-weight: 900; margin-bottom: 30px;}
        .car_service .car_lst li .gt_img { clear: both; display: block; float: left; width: 100%; margin-right: 5%;}
        .car_service .car_lst li .gt1 { width: 60%;}
        .car_service .car_lst li .gt2 { width: 60%; margin-left: 30%; margin-top: 5%; margin-bottom: 5%;}
        .car_service .car_lst li .gt3 { width: 60%;}

        /* TODO page2 */
        .car_wrap { clear: both; width: 100%; height: auto; margin-top: 100px;}
        .car_wrap .car_lst { clear: both; width: 100%;}
        .car_wrap .car_lst li { width: 30%; float: left; margin-right: 3%; margin-bottom: 60px; position: relative; display: block;}
        .car_wrap .car_lst li img { display: block; width: 100%; height: auto;}
        .car_wrap .car_lst li .car_ti { text-align: center; font-weight: bold; font-size: 20px; margin-top: 1em;}
        .car_wrap .car_lst li .car_co { text-align: center; opacity: 0.7; margin-bottom: 50px;}
        .car_over { position: relative; margin: 0px auto;}
        .car_wrap .car_lst li:hover {background-color: #EEE; }
        .car_over #car1_2 { position: absolute; display: none; top: 0px; left: 0px; }
        .car_over #car2_2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_over #car3_2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_over #car4_2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_over #car5_2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_over #car6_2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_over #car7_2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_over #car8_2 { position: absolute; display: none; top: 0px; left: 0px;}
        .car_wrap .car_lst li:hover #car1_2 { display: block; }  
        .car_wrap .car_lst li:hover #car1_1 { opacity: 0;}
        .car_wrap .car_lst li:hover #car2_2 { display: block;}  
        .car_wrap .car_lst li:hover #car2_1 { opacity: 0;}
        .car_wrap .car_lst li:hover #car3_2 { display: block;}  
        .car_wrap .car_lst li:hover #car3_1 { opacity: 0;}
        .car_wrap .car_lst li:hover #car4_2 { display: block;}  
        .car_wrap .car_lst li:hover #car4_1 { opacity: 0;}
        .car_wrap .car_lst li:hover #car5_2 { display: block;}  
        .car_wrap .car_lst li:hover #car5_1 { opacity: 0;}
        .car_wrap .car_lst li:hover #car6_2 { display: block;}  
        .car_wrap .car_lst li:hover #car6_1 { opacity: 0;}
        .car_wrap .car_lst li:hover #car7_2 { display: block;}  
        .car_wrap .car_lst li:hover #car7_1 { opacity: 0;}
        .car_wrap .car_lst li:hover #car8_2 { display: block;}  
        .car_wrap .car_lst li:hover #car8_1 { opacity: 0;}
        .car_btn { font-size: 20px; margin-left: 50px; margin-right: 30px; margin-bottom: 20px; background-color: transparent; border: none; color: #111; font-weight: 900; opacity: 0; transition: opacity 0.5s linear;}
        .car_wrap .car_lst li:hover .car_btn { opacity: 1;}

        /* TODO page3 */
        .car_sal { width: 1200px; clear: both; display: block; float: left;}
        .car_sal .sal_title { width: 100%; text-align: center; font-size: 60px; font-weight: 900; margin-top: 30px; margin-bottom: 0.5em;}
        .car_sal .sal_subtitle { width: 100%; text-align: center; font-size: 20px; font-weight: 400; opacity: 0.5; margin-bottom: 50px;}
        .car_sal .car_lst { width: 100%; float: left; border: 2px solid rgb(187, 183, 183); margin-top: 40px;}
        .car_sal .car_lst li { float: left; width: 20%; height: 200px; margin-right: 3%; position: relative;}
        .car_sal .car_lst .car_lst1 { margin-left: 90px;}
        .car_sal .car_lst li .car_tit { text-align: center; margin-top: 30px; margin-bottom: 30px; font-size: 15px; font-weight: 200;}
        .car_sal .car_lst li .car_com { text-align: center; font-size: 25px;}
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
        <script>
           function black(){
            var black = document.getElementById("car1");
            car1.src = "./img/EV06-GT/car/abp_01.png";
           }
           function red(){
            var red = document.getElementById("car1");
            car1.src = "./img/EV06-GT/car/cr5_01.png";
           }
           function black(){
            var black = document.getElementById("car1");
            car1.src = "./img/EV06-GT/car/abp_01.png";
           }
           function du(){
            var du = document.getElementById("car1");
            car1.src = "./img/EV06-GT/car/du3_01.png";
           }
           function klm(){
            var klm = document.getElementById("car1");
            car1.src = "./img/EV06-GT/car/klm_01.png";
           }
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
                        <option selected>구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option selected>상품추천</option>
                        <option value="service.jsp#page2">카탈로그/가격표</option>
                        <option value="service.jsp#page3">구매가이드</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">상품추천</h2>
                    <br><br><hr>
                    <div class="car_service">
                        <ul class="car_lst">
                            <li>
                                <h3>EV6 GT</h3>
                                <img src="./img/EV06-GT/swp_01.png" alt="" id="car1">
                                <img src="./img/EV06-GT/car/abp_01.png" alt="" id="car2">
                                <img src="./img/EV06-GT/car/cr5_01.png" alt="" id="car3">
                                <img src="./img/EV06-GT/car/du3_01.png" alt="" id="car4">
                                <img src="./img/EV06-GT/car/klm_01.png" alt="" id="car5">
                                
                                <div class="car_over">
                                    <button type="button" id="car_black" onclick="black()">
                                        <img src="./img/EV06-GT/icon/abp.png" alt="">
                                    </button>
                                    <button type="button" class="car_red" onclick="red()">
                                        <img src="./img/EV06-GT/icon/cr5.png" alt="">
                                    </button>
                                    <button type="button" class="car_du" onclick="du()">
                                        <img src="./img/EV06-GT/icon/du3.png" alt="">
                                    </button>
                                    <button type="button" class="car_klm" onclick="klm()">
                                        <img src="./img/EV06-GT/icon/klm.png" alt="">
                                    </button>
                                </div>
                            </li>
                            <li>
                                <p class="gt_title">브랜드</p>
                                <p class="gt_subTitle">The Kia EV6 GT I 개막, 고성능 전기차의 시대</p>
                                <div class="gt_img">
                                    <img src="./img/EV06-GT/gt1.jpg" alt="The Kia EV6 GT 후면 디자인" id ="gt1" class="gt1">
                                    <video src="./img/EV06-GT/The Kia EV6 GT _ 개막, 고성능 전기차의 시대ㅣ브랜드 필름 30s (savefrom.kr).mp4" id="gt2" class="gt2" autoplay muted></video>
                                    <img src="./img/EV06-GT/gt2.jpg" alt="" id="gt3" class="gt3">
                                </div>
                                
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
                        <option selected>구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option value="service.jsp#page2">상품추천</option>
                        <option selected>카탈로그/가격표</option>
                        <option value="service.jsp#page3">구매가이드</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">카탈로그/가격표</h2>
                    <div class="car_wrap">
                        <ul class="car_lst">
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/niro-ev_s_swp.png" alt="car1_1" id="car1_1">
                                    <img src="./img/EV&PBV/niro-ev_q_swp.png" alt="car1_2" id="car1_2">
                                </div>
                                <p class="car_ti">니로EV</p>
                                <p class="car_co">4,942 만원 ~</p>
                                <button class="car_btn">카탈로그 ></button>
                                <button class="car_btn">가격표 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/niro-plus_s_m7g.png" alt="" id="car2_1">
                                    <img src="./img/EV&PBV/niro-plus_q_m7g.png" alt="" id="car2_2">
                                </div>
                                <p class="car_ti">니로 플러스</p>
                                <p class="car_co">4,420 만원 ~</p>
                                <button class="car_btn">카탈로그 ></button>
                                <button class="car_btn">가격표 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/ev6_s_glb.png" alt="" id="car3_1">
                                    <img src="./img/EV&PBV/ev6_q_glb.png" alt="" id="car3_2">
                                </div>
                                <p class="car_ti">EV6</p>
                                <p class="car_co">5,187 만원 ~</p>
                                <button class="car_btn">카탈로그 ></button>
                                <button class="car_btn">가격표 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/ev6-gt_s_klm.png" alt="" id="car4_1">
                                    <img src="./img/EV&PBV/ev6-gt_q_klm.png" alt="" id="car4_2">
                                </div>
                                <p class="car_ti">EV6GT</p>
                                <p class="car_co">7,668 만원 ~</p>
                                <button class="car_btn">카탈로그 ></button>
                                <button class="car_btn">가격표 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/bongo3-ev_s_ud.png" alt="" id="car5_1">
                                    <img src="./img/EV&PBV/bongo3-ev_q_ud.png" alt="" id="car5_2">
                                </div>
                                <p class="car_ti">봉고Ⅲ EV</p>
                                <p class="car_co">4,185 만원 ~</p>
                                <button class="car_btn">카탈로그 ></button>
                                <button class="car_btn">가격표 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/bongo3-ev-power_s_ud.png" alt="" id="car6_1">
                                    <img src="./img/EV&PBV/bongo3-ev-power_q_ud.png" alt="" id="car6_2">
                                </div>
                                <p class="car_ti">봉고III 파워게이트 EV</p>
                                <p class="car_co">4,577 만원 ~</p>
                                <button class="car_btn">카탈로그 ></button>
                                <button class="car_btn">가격표 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/bongo3-ev-frozen-s_s_ud.png" alt="" id="car7_1">
                                    <img src="./img/EV&PBV/bongo3-ev-frozen-s_q_ud.png" alt="" id="car7_2">
                                </div>
                                <p class="car_ti">봉고III 탑차/윙바디 EV</p>
                                <p class="car_co">5,984 만원 ~</p>
                                <button class="car_btn">카탈로그 ></button>
                                <button class="car_btn">가격표 ></button>
                            </li>
                        </ul>
                    </div>
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
                        <option selected>구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option value="service.jsp#page3">상품추천</option>
                        <option value="service.jsp#page2">카탈로그/가격표</option>
                        <option selected>구매가이드</option>
                        <br><br><hr><br>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">구매가이드</h2>
                    <div class="car_sal">
                        <h2 class="sal_title">구매상담 신청</h2>
                        <h2 class="sal_subtitle">구매 상담 신청을 하시면 전담 상담원이 차량 구매에 관한 모든 <br> 정보를 신속하고 정확하게 알려드립니다.</h2>
                        <ul class="car_lst">
                            <li class="car_lst1">
                                <h3 class="car_tit">Step 1</h3>
                                <p class="car_com">차량 및 <br>판매 네트워크 선택</p>
                            </li>
                            <li>
                                <h3 class="car_tit">Step 2</h3>
                                <p class="car_com">개인정보 확인</p>
                            </li>
                            <li>
                                <h3 class="car_tit">Step 3</h3>
                                <p class="car_com">구매 상담 신청 완료</p>
                            </li>
                            <li>
                                <h3 class="car_tit">Step 4</h3>
                                <p class="car_com">전문상담원의<br>상담 전화</p>
                            </li>
                        </ul>
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
    <!-- .to_top.on -->
    <a href="" class="to_top">↑</a>
</body>
</html>
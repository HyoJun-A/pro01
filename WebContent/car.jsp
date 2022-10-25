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

        /* TODO page1~page3 */
        .car_wrap { width: 100%; height: auto; margin-top: 100px;}
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
        .car_btn { font-size: 20px; margin-left: 30px; margin-right: 30px; margin-bottom: 20px; background-color: transparent; border: none; color: #111; font-weight: 900; opacity: 0; transition: opacity 0.5s linear;}
        .car_wrap .car_lst li:hover .car_btn { opacity: 1;}  
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
                <img src="./img/page2/기아스토어.png" alt="">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="./index.jsp" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option value="./company.jsp#page1" >기업소개</option>
                        <option selected>차량</option>
                        <option value="./service.jsp#page1">구매</option>
                        <option value="./experience.jsp#page1">체험</option>
                        <option value="./custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option selected>EV/PBV</option>
                        <option value="car.jsp#page2">승용</option>
                        <option value="car.jsp#page3">RV</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">EV/PBV</h2>
                    <div class="car_wrap">
                        <ul class="car_lst">
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/niro-ev_s_swp.png" alt="car1_1" id="car1_1">
                                    <img src="./img/EV&PBV/niro-ev_q_swp.png" alt="car1_2" id="car1_2">
                                </div>
                                <p class="car_ti">니로EV</p>
                                <p class="car_co">4,942 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/niro-plus_s_m7g.png" alt="" id="car2_1">
                                    <img src="./img/EV&PBV/niro-plus_q_m7g.png" alt="" id="car2_2">
                                </div>
                                <p class="car_ti">니로 플러스</p>
                                <p class="car_co">4,420 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/ev6_s_glb.png" alt="" id="car3_1">
                                    <img src="./img/EV&PBV/ev6_q_glb.png" alt="" id="car3_2">
                                </div>
                                <p class="car_ti">EV6</p>
                                <p class="car_co">5,187 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/ev6-gt_s_klm.png" alt="" id="car4_1">
                                    <img src="./img/EV&PBV/ev6-gt_q_klm.png" alt="" id="car4_2">
                                </div>
                                <p class="car_ti">EV6GT</p>
                                <p class="car_co">7,668 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/bongo3-ev_s_ud.png" alt="" id="car5_1">
                                    <img src="./img/EV&PBV/bongo3-ev_q_ud.png" alt="" id="car5_2">
                                </div>
                                <p class="car_ti">봉고Ⅲ EV</p>
                                <p class="car_co">4,185 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/bongo3-ev-power_s_ud.png" alt="" id="car6_1">
                                    <img src="./img/EV&PBV/bongo3-ev-power_q_ud.png" alt="" id="car6_2">
                                </div>
                                <p class="car_ti">봉고III 파워게이트 EV</p>
                                <p class="car_co">4,577 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/EV&PBV/bongo3-ev-frozen-s_s_ud.png" alt="" id="car7_1">
                                    <img src="./img/EV&PBV/bongo3-ev-frozen-s_q_ud.png" alt="" id="car7_2">
                                </div>
                                <p class="car_ti">봉고III 탑차/윙바디 EV</p>
                                <p class="car_co">5,984 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
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
                        <option value="./company.jsp#page1" >기업소개</option>
                        <option selected>차량</option>
                        <option value="./service.jsp#page1">구매</option>
                        <option value="./experience.jsp#page1">체험</option>
                        <option value="./custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option value="car.jsp#page1">EV/PBV</option>
                        <option selected>승용</option>
                        <option value="car.jsp#page3">RV</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">승용</h2>
                    <div class="car_wrap">
                        <ul class="car_lst">
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/morning_s_b2y.png" alt="car1_1" id="car1_1">
                                    <img src="./img/riding/morning_q_b2y.png" alt="car1_2" id="car1_2">
                                </div>
                                <p class="car_ti">모닝</p>
                                <p class="car_co">1,175 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/ray_s_m9y.png" alt="" id="car2_1">
                                    <img src="./img/riding/ray_q_m9y.png" alt="" id="car2_2">
                                </div>
                                <p class="car_ti">레이</p>
                                <p class="car_co">1,390 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/k3_s_m4b.png" alt="" id="car3_1">
                                    <img src="./img/riding/k3_q_m4b.png" alt="" id="car3_2">
                                </div>
                                <p class="car_ti">K3</p>
                                <p class="car_co">1,785 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/k3-gt_s_cr5.png" alt="" id="car4_1">
                                    <img src="./img/riding/k3-gt_q_cr5.png" alt="" id="car4_2">
                                </div>
                                <p class="car_ti">K3 GT</p>
                                <p class="car_co">2,775 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/k5_s_agt.png" alt="" id="car5_1">
                                    <img src="./img/riding/k5_q_agt.png" alt="" id="car5_2">
                                </div>
                                <p class="car_ti">K5</p>
                                <p class="car_co">2,445 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/k8_s_klg.png" alt="" id="car6_1">
                                    <img src="./img/riding/k8_q_klg.png" alt="" id="car6_2">
                                </div>
                                <p class="car_ti">K8</p>
                                <p class="car_co">3,320 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/stinger_s_acg.png" alt="" id="car7_1">
                                    <img src="./img/riding/stinger_q_acg.png" alt="" id="car7_2">
                                </div>
                                <p class="car_ti">스팅어</p>
                                <p class="car_co">3,950 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/riding/k9_s_d9b.png" alt="" id="car8_1">
                                    <img src="./img/riding/k9_q_d9b.png" alt="" id="car8_2">
                                </div>
                                <p class="car_ti">K9</p>
                                <p class="car_co">5,880 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
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
                        <option value="./company.jsp#page1" >기업소개</option>
                        <option selected>차량</option>
                        <option value="./service.jsp#page1">구매</option>
                        <option value="./experience.jsp#page1">체험</option>
                        <option value="./custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option value="car.jsp#page1">EV/PBV</option>
                        <option value="car.jsp#page2">승용</option>
                        <option selected>SUV</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">SUV</h2>
                    <div class="car_wrap">
                        <ul class="car_lst">
                            <li>
                                <div class="car_over">
                                    <img src="./img/SUV/seltos_s_swp.png" alt="car1_1" id="car1_1">
                                    <img src="./img/SUV/seltos_q_swp.png" alt="car1_2" id="car1_2">
                                </div>
                                <p class="car_ti">셀토스</p>
                                <p class="car_co">2,100 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/SUV/niro-hybrid_s_cge.png" alt="" id="car2_1">
                                    <img src="./img/SUV/niro-hybrid_q_cge.png" alt="" id="car2_2">
                                </div>
                                <p class="car_ti">니로</p>
                                <p class="car_co">2,833 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/SUV/sportage_s_swp.png" alt="" id="car3_1">
                                    <img src="./img/SUV/sportage_q_swp.png" alt="" id="car3_2">
                                </div>
                                <p class="car_ti">스포티지</p>
                                <p class="car_co">2,520 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/SUV/sorento_s_m4b.png" alt="" id="car4_1">
                                    <img src="./img/SUV/sorento_q_m4b.png" alt="" id="car4_2">
                                </div>
                                <p class="car_ti">쏘렌토</p>
                                <p class="car_co">3,058 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/SUV/mohave_s_abp.png" alt="" id="car5_1">
                                    <img src="./img/SUV/mohave_q_abp.png" alt="" id="car5_2">
                                </div>
                                <p class="car_ti">모하비</p>
                                <p class="car_co">5,050 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/SUV/carnival_s_d2u.png" alt="" id="car6_1">
                                    <img src="./img/SUV/carnival_q_d2u.png" alt="" id="car6_2">
                                </div>
                                <p class="car_ti">카니발</p>
                                <p class="car_co">3,180 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
                            </li>
                            <li>
                                <div class="car_over">
                                    <img src="./img/SUV/carnival-hilimousine_s_abp.png" alt="" id="car7_1">
                                    <img src="./img/SUV/carnival-hilimousine_q_abp.png" alt="" id="car7_2">
                                </div>
                                <p class="car_ti">카니발 하이리무진</p>
                                <p class="car_co">6,096 만원 ~</p>
                                <button class="car_btn">자세히 보기 ></button>
                                <button class="car_btn">견적 내기 ></button>
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
    <a href="" class="to_top">↑</a><!-- .to_top.on -->
</body>
</html>
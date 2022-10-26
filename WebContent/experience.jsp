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
        .flagship { width: 1200px;}
        .flagship .flagship_list { display: block; float: left; width: 600px; height: auto;}
        .flagship .flagship_list .flagship_tit { margin-top: 30%; text-align: left; font-size: 40px; margin-bottom: 1em;}
        .flagship .flagship_list .flagship_com { font-size: 17px; opacity: 0.5; font-weight: 400;}
        .flagship .flagship_list .flagship_subtit { margin-top: 2em; font-size: 20px; font-weight: 900; margin-bottom: 0.5;}
        .flagship .flagship_list .flagship_subcom { font-size: 20px; font-weight: 500; opacity: 0.5;}
        .flagship .flagship_img img { width: 600px; height: auto;}

        /* TODO page2 */
        .kia360 { width: 1200px;}
        .kia360 .ki360_tit { font-size: 50px; text-align: center; margin: 1em;}
        .kia360 .kia360_img { clear: both; float: left; display: block; width: 1200px;}
        .kia360 .kia360_img .kiaimg { width: 600px; float: left;}
        .kia360 .kia360_img img { width: 500px; height: auto;}
        .kia360 .kia360_img p { width: 500px; margin-top: 20px; font-size: 20px; opacity: 0.5; font-weight: 900;}

        /* TODO page3 */
        .Exhibition { width: 1200px;}
        .Exhibition .Exhibition_lst { display: block; float: left;}
        .Exhibition .Exhibition_lst li { width: 1200px; float: left;}
        .Exhibition .Exhibition_lst li h2 { text-align: center; font-size: 40px; margin: 30px;}
        .Exhibition .Exhibition_lst li img { width: 500px; height: auto; margin-left: 50px;}
        .Exhibition .Exhibition_lst li .hmg1 { width: 600px; height: auto; display: block; float: left;}
        .Exhibition .Exhibition_lst li .hmg_tit { text-align: center; margin: 0.5em; font-size: 20px; font-weight: 900;}
        .Exhibition .Exhibition_lst li .hmg_com { text-align: center; font-weight: 400; font-size: 13px; opacity: 0.5; margin-bottom: 30px;}
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
                        <option value="company.jsp#page1" >기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option selected>체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option selected>플래그십</option>
                        <option value="experience.jsp#page2">kia360</option>
                        <option value="experience.jsp#page3">전시차조회</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">플래그십</h2>
                    <br><hr><br><br>
                    <div class="flagship">
                        <div class="flagship_list">
                            <h2 class="flagship_tit">강서 플래그십 스토어</h2>
                            <p class="flagship_com">다양한 전시차량 관람 뿐만 아니라, 영감을 확장시키는 디지털 체험이 동시에<br>가능한 첫 도심형 플래그십 스토어</p>
                            <p class="flagship_subtit">주요 콘텐츠</p>
                            <p class="flagship_subcom">3D 컨피규레이터, 인터랙티브 그라운드, 컬러 컬렉션 등</p>
                        </div>
                        <div class="flagship_img">
                            <img src="./img/Flagship/플래그십스토어.jpg" alt="">
                        </div>
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
                        <option value="company.jsp#page1" >기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option selected>체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option value="experience.jsp#page2">플래그십</option>
                        <option selected>kia360</option>
                        <option value="experience.jsp#page3">전시차조회</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">kia360</h2>
                    <br><hr><br><br>
                    <div class="kia360">
                        <h2 class="ki360_tit">Kia360 Story</h2>
                        <div class="kia360_img">
                            <div class="kiaimg">
                                <img src="./img/Flagship/kia360_1.jpg" alt="">
                                <p class="kia360_com">새로운 생각이 시작되는 공간과 시간으로 초대합니다.</p>
                            </div>
                            <div class="kiaimg">
                                <img src="./img/Flagship/kia360_2.jpg" alt="">
                                <p class="kia360_com">자연과 조화된 무드톤의 따뜻한 공간에서 편안하고 자유롭게 Kia360을 즐겨보세요.</p>
                            </div>
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
                        <option value="company.jsp#page1" >기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option selected>체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option value="experience.jsp#page3">플래그십</option>
                        <option value="experience.jsp#page2">kia360</option>
                        <option selected>전시차조회</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">전시차조회</h2>
                    <br><hr><br><br>
                    <div class="Exhibition">
                        <ul class="Exhibition_lst">
                            <li>
                                <h2 class="Exhibition_tit">HMG 드라이빙 익스피리언스 센터</h2>
                                <div class="hmg1">
                                    <img src="./img/Flagship/driving1.jpg" alt="">
                                    <p class="hmg_tit">트랙안내</p>
                                    <p class="hmg_com">국내 최대 규모의 드라이빙 센터에서 다양한 주행 조건과 극한의 성능을 체험하실 수 있습니다.</p>
                                </div>
                                <div class="hmg1">
                                    <img src="./img/Flagship/driving2.jpg" alt="">
                                    <p class="hmg_tit">센터 소개</p>
                                    <p class="hmg_com">주행 실력을 업그레이드 할 수 있는 맞춤형 교육 및 다양한 전시·체험을 즐길 수 있습니다.</p>
                                </div>
                            </li>
                            <li>
                                <h2 class="Exhibition_tit">드라이빙 프로그램</h2>
                                <div class="hmg1">
                                    <img src="./img/Flagship/driving3.jpg" alt="">
                                    <p class="hmg_tit">드라이빙 익스피리언스</p>
                                    <p class="hmg_com">드라이빙의 기초부터 고급 테크닉까지 다양한 프로그램을 경험해 보세요.</p>
                                </div>
                                <div class="hmg1">
                                    <img src="./img/Flagship/driving4.jpg" alt="">
                                    <p class="hmg_tit">드라이빙 플레저</p>
                                    <p class="hmg_com">다양한 차량으로 드라이버 동승 체험과 센터 투어가 가능합니다.</p>
                                </div>
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
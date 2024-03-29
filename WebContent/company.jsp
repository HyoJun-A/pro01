<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="head.jsp" %>
    <style>
        /* content */
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
        .con_wrap1 { width: 1000px; height: 200px; background-color: rgba(5,20,31,0.03); padding: 3em; margin-left: 50px;}
        .con_wrap1 .con_lst {width: 1000px; float: left; border-bottom: 2px solid rgb(187, 183, 183); margin-bottom: 30px;}
        .con_wrap1 .con_lst li h3 { display:block; box-sizing:border-box; float:left;
        line-height: 32px; font-size:14px;}
        .con_wrap1 .con_lst li .con_hd{ width: 200px; font-size: 15px;}
        .con_wrap1 .con_lst li .con_com{ width: 500px; font-weight: 200; font-size: 15px;}

        .con_wrap2 {width: 1200px; height: auto; margin-left: 50px; margin-top: 50px;}
        .con_wrap2 .con_lst2 { width: 500px; float: left; margin-bottom: 30px; margin-right: 100px;}
        .con_wrap2 .con_lst2 li h3 {  display:block; box-sizing:border-box; float:left;
        line-height: 32px; font-size:14px;}
        .con_wrap2 .con_lst2 li .con_hd { width: 500px; font-size: 17px;}
        .con_wrap2 .con_lst2 li .con_com { width: 500px; font-weight: 200; border-bottom: 2px solid #EEE;}

        /* TODO page2 */
        .pic_lst { clear: both; width: 100%; margin-top: 50px;}
        .pic_lst li { width: 30%; float: left; margin-right: 2%; margin-bottom: 60px; position: relative;}
        .pic_lst li { display: block; position: relative;}
        .pic_lst li .pic_fr { width: 100%; height: 290px; overflow: hidden;}
        .pic_lst li img { display:block; width: 100%; height:auto; }
        .pic_tit { font-size: 20px; margin-bottom: 10px;}
        .pic_com, .pic_info { font-size: 15px; margin-bottom: 0.5em;}
        .pic_com:before { content:""; display:block; float:left; width: 4px; height: 4px; background-color: #111; border-radius: 50%; margin-top: 8px; margin-right: 0.5em;}
        .pic_info:before { content:""; display:block; float:left; width: 4px; height: 4px; background-color: #111; border-radius: 50%; margin-top: 8px; margin-right: 0.5em;}

        /* TODO page3 */
        .ir__section { clear: both; width: 100%; margin-bottom: 50px; margin-top: 50px;}
        .h4 { margin-bottom: 1em;}
        .bod-list { clear: both; width: 100%;}
        .bod-list li { display: block; position: relative; background-color: #EEE; width: 30%; height: auto;  float: left; margin-right: 2%; margin-bottom: 60px;}
        .item_hd { display: block; margin-top: 20px; margin-left: 30px; margin-bottom: 50px;}
        .item_hd .h5 { font-size: 30px; margin-bottom: 1em;}
        .item_hd .item__desc {opacity: 0.7;}
        .item__dl { margin-left: 30px;}
        .item__dl dt { font-weight: 900;}
        .item__dl dd { margin-bottom: 2em;}
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
                        <option selected >기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option selected>기업정보</option>
                        <option value="company.jsp#page2">공장별 일반현황</option>
                        <option value="company.jsp#page3">이사회</option>
                    </select>
                </div>
            </div>
            <!-- TODO Company -->
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">기업정보</h2><br><br>
                    <div class="con_wrap1">
                        <ul class="con_lst">
                            <li>
                                <h3 class="con_hd">회사명</h3>
                                <h3 class="con_com">기아주식회사</h3>
                            </li>
                        </ul>
                        <ul class="con_lst">
                            <li>
                                <h3 class="con_hd">대표이사</h3>
                                <h3 class="con_com">송호성, 최준영</h3>
                            </li>
                        </ul>
                        <ul class="con_lst">
                            <li>
                                <h3 class="con_hd">대표업종</h3>
                                <h3 class="con_com">자동차 제조 및 판매</h3>
                            </li>
                        </ul>
                        <ul class="con_lst">
                            <li>
                                <h3 class="con_hd">설립일</h3>
                                <h3 class="con_com">1944년 12월 11일</h3>
                            </li>
                        </ul>
                    </div>
                    <div class="con_wrap2">
                        <ul class="con_lst2">
                            <li>
                                <h3 class="con_hd">자산총계 (‘21년말)</h3>
                                <h3 class="con_com">(연결) 66,849,997 백만원, (별도) 45,188,766 백만원</h3>
                            </li>
                        </ul>
                        <ul class="con_lst2">
                            <li>
                                <h3 class="con_hd">매출액 (‘21년말)</h3>
                                <h3 class="con_com">(연결) 69,862,366 백만원, (별도) 40,979,570 백만원</h3>
                            </li>
                        </ul>
                        <ul class="con_lst2">
                            <li>
                                <h3 class="con_hd">보통주 자본금 (‘21년말)</h3>
                                <h3 class="con_com">(연결, 별도 동일) 2,139,317 백만원</h3>
                            </li>
                        </ul>
                        <ul class="con_lst2">
                            <li>
                                <h3 class="con_hd">결산기</h3>
                                <h3 class="con_com">매년 12월말 결산</h3>
                            </li>
                        </ul>
                        <ul class="con_lst2">
                            <li>
                                <h3 class="con_hd">상장일</h3>
                                <h3 class="con_com">1973년 07월 21일</h3>
                            </li>
                        </ul>
                        <ul class="con_lst2">
                            <li>
                                <h3 class="con_hd">본점주소</h3>
                                <h3 class="con_com">서울특별시 서초구 헌릉로 12 (양재동)</h3>
                            </li>
                        </ul>
                        <ul class="con_lst2">
                            <li>
                                <h3 class="con_hd">대표전화</h3>
                                <h3 class="con_com">02) 3464-1114</h3>
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
                        <option selected >기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option value="company.jsp#page1">기업정보</option>
                        <option selected>공장별 일반현황</option>
                        <option value="company.jsp#page3">이사회</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">공장별 일반현황</h2>
                    <ul class="thumb_lst">
                        <ul class="pic_lst">
                            <li>                            
                                <div class="pic_fr"><img src="./img/company/com_1.jpg" alt="pic1"></div>
                                <h3 class="pic_tit">기아 한국 공장</h3>
                                <p class="pic_com">생산량 : 1,591,000대</p>
                                <p class="pic_info">K3, K5, 스포티지, 쏘렌토 등</p>
                            </li>
                            <li>
                                <div class="pic_fr"><img src="./img/company/com_2.jpg" alt="pic2"></div>
                                <h3 class="pic_tit">기아 중국 공장</h3>
                                <p class="pic_com">생산량 : 890,000대</p>
                                <p class="pic_info">K3, K5, 셀토스, 스토닉</p>
                            </li>
                            <li>
                                <div class="pic_fr"><img src="./img/company/com_3.jpg" alt="pic3"></div>
                                <h3 class="pic_tit">기아 멕시코 공장</h3>
                                <p class="pic_com">생산량 : 400,000대</p>
                                <p class="pic_info">프라이드, K3</p>
                            </li>
                            <li>
                                <div class="pic_fr"><img src="./img/company/com_4.jpg" alt="pic4"></div>
                                <h3 class="pic_tit">기아 미국 공장</h3>
                                <p class="pic_com">생산량 : 340,000대</p>
                                <p class="pic_info">K5, 쏘렌토, 텔루라이드</p>
                            </li>
                            <li>
                                <div class="pic_fr"><img src="./img/company/com_5.jpg" alt="pic5"></div>
                                <h3 class="pic_tit">기아 슬로바키아 공장</h3>
                                <p class="pic_com">생산량 : 330,000대</p>
                                <p class="pic_info">스포티지, 씨드, 벤가</p>
                            </li>
                        </ul>
                    </ul>
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
                        <option selected >기업소개</option>
                        <option value="car.jsp#page1">차량</option>
                        <option value="service.jsp#page1">구매</option>
                        <option value="experience.jsp#page1">체험</option>
                        <option value="custom.jsp#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option value="company.jsp#page1">기업정보</option>
                        <option value="company.jsp#page2">이사회</option>
                        <option selected>이사회</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">이사회</h2>
                    <div class="ir__section">
                        <h2 class="h4">이사회 설치목적</h2>
                        <p class="ir__sub">
                          이사회는 회사의 업무집행에 관한 의사를 결정하기 위하여 주주총회에서 선임된 이사전원으로 구성되는 주식회사의 필요상설기관입니다.
                        </p>
                    </div>
                    <div class="ir__section">
                        <h2 class="h4">이사회 구성현황</h2>
                        <p class="ir__sub">
                          당사의 이사회는 사내이사 4명, 사외이사 5명 등 총 9명으로 구성되어 있습니다.<br>
                          사내이사는 이사회의 추천으로, 사외이사는 사외이사후보추천위원회의 추천으로 주주총회의 결의를 통해 선임됩니다.
                        </p>
                    </div>
                    <ul class="bod-list">
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">정의선</b><br>
                                <span class="item__desc">현대자동차그룹 회장</span>
                            </div>
                            
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2003.03.15</dd>
                                <dt>최근 선임일</dt>
                                <dd>2022.03.29</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">송호성</b><br>
                                <span class="item__desc">대표이사 사장</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2020.06.10</dd>
                                <dt>최근 선임일</dt>
                                <dd>2022.03.29</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">최준영</b><br>
                                <span class="item__desc">대표이사 부사장</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2018.03.09</dd>
                                <dt>최근 선임일</dt>
                                <dd>2021.03.22</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">주우정</b><br>
                                <span class="item__desc">재경본부장 부사장</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2019.03.15</dd>
                                <dt>최근 선임일</dt>
                                <dd>2020.03.24</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl> 
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">한철수</b><br>
                                <span class="item__desc">사외이사</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2018.03.09</dd>
                                <dt>최근 선임일</dt>
                                <dd>2021.03.22</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">김덕중</b><br>
                                <span class="item__desc">사외이사</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2017.03.24</dd>
                                <dt>최근 선임일</dt>
                                <dd>2020.03.24</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">김동원</b><br>
                                <span class="item__desc">사외이사</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2017.03.24</dd>
                                <dt>최근 선임일</dt>
                                <dd>2020.03.24</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">조화순</b><br>
                                <span class="item__desc">사외이사</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2021.03.22</dd>
                                <dt>최근 선임일</dt>
                                <dd>2021.03.22</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
                        <li class="item">
                            <div class="item_hd">
                                <b class="h5">신현정</b><br>
                                <span class="item__desc">사외이사</span>
                            </div>
                            <dl class="item__dl">
                                <dt>최초 선임일</dt>
                                <dd>2022.03.29</dd>
                                <dt>최근 선임일</dt>
                                <dd>2022.03.29</dd>
                                <dt>임기</dt>
                                <dd>3년</dd>
                                <dt>임원배상 책임보험</dt>
                                <dd>가입</dd>
                            </dl>
                        </li>
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
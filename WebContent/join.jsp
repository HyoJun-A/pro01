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

    .frm { border:2px solid #333; padding: 24px; width: 580px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:150px; height: 48px;  }
    .frm_tb td { width:400px; height: 48px; }
    .frm_tb label:before { content:"*"; }
	
	.in_btn2 { display: block; background-color:#333; min-width:30px; height: 32px; line-height: 32px; border-radius:20px; float:right;cursor:pointer;}
	.in_btn2:hover { background-color: deepskyblue; }
    .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#f36; font-size:16px; text-indent:0.5em; }
    .in_btn { display:block; background-color:#333; min-width:120px; height: 32px; 
    line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: deepskyblue; }

    /* ul > li 를 테이블 처럼 출력 */
    .frm_tb { display:table; }
    .frm_tb li { display:table-row; }
    .frm_tb .td, .frm_tb .th, .frm_tb .td2 { display:table-cell; }
    .frm_tb .th { width:200px; }
    .frm_tb .td { width:200px; }
    .frm_tb .td2 { width:400px; }
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
                    <h2 class="page_title">회원가입</h2>
                    <div class="form_fr">
                        <form name="frm1" action="./joinPro.jsp" method="post" id="joinForm" class="frm" onsubmit="return joinAlert(this)">
                            <table class="frm_tb">
                                <tbody>
                                    <tr>
                                        <th><label for="id">아이디</label></th>
                                        <td>
                                            <input type="text" id="id" name="id" class="in_dt" required autofocus>
                                            <button type="button" class="in_btn2" onclick="idCheck()">아이디 중복 확인</button>
                                            <input type="hidden" id="id2" name="id2" value="no">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="pw">비밀번호</label></th>
                                        <td>
                                            <input type="password" id="pw" name="pw" class="in_dt" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="pw2">비밀번호  확인</label></th>
                                        <td>
                                            <input type="password" id="pw2" name="pw2" class="in_dt" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="name">이  름</label></th>
                                        <td>
                                            <input type="text" id="name" name="name" class="in_dt" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="email">이메일</label></th>
                                        <td>
                                            <input type="email" id="email" name="email" class="in_dt" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="tel">전화번호</label></th>
                                        <td>
                                            <input type="tel" id="tel" name="tel" class="in_dt" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <button type="submit" class="in_btn">회원가입</button>
                                            <button type="reset" class="in_btn">취소</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                <script>
                       	function joinAlert(f){
                       		if(f.pw.value!=f.pw2.value){
                       			alert("비밀번호를 다시 확인해주세요");
                       			return false;
                       		}
                       		if(f.id2.value!="yes"){
                       			alert("아이디가 중복 체크를 하지 않으셨습니다.");
                       			return false;
                       		}
                       	}
                       	function idCheck(){
                       		var win = window.open("idCheck.jsp", "idCheckWin", "width=400, height=300");
                       	}
                        </script>
            </section>
    </div>
        <!-- TODO footer -->
        <footer class="ft">
            <%@ include file="footer.jsp" %>
    </div>

</body>
</html>

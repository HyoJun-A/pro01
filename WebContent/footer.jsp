<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="ft_wrap">
     <div class="ft_logo"><img src="./img/KIA_logo2.png" alt="하단로고"></div>
     <div class="mid_box">
         <nav class="fnb">
             <a href="./member01.jsp">개인정보 처리 방침</a>
             <a href="./member02.jsp">이용약관</a>
             <a href="./member03.jsp">이메일무단수집거부</a>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   #first{ /*광고관련*/
      width:1100px;
      height:30px;
      margin: auto;
      background: #F0FFFF;
      text-align: center;
      padding-top: 10px;
   }
   
   #second{ /*로고, 메뉴*/
      width:1100px;
      height:60px;
      margin: auto;
      background: #AFEEEE;
   }
   
   #second   #left{
      padding-top: 15px;
      width: 100px;
      float: left;
   }
   
   #second #right{
      padding-top: 15px;
      width: 1000px;
      float: right;
      text-align: right;
   }
   
   #second #right #menu{
      display: inline-block;
      width: 150px;
      position:relative;
   }
   
   #second #right #menu #sub{
      position:absolute;
      left: -80px;
        background:white;
         padding-left:0px;
         text-align: center;
         /*visibility:hidden;*/
   }
   
   #second #right #menu #sub li{
      list-style: none;
   }
   
   #third{ /*큰 사진*/
      width:1100px;
      height:400px;
      margin: auto;
      background: #FFF8DC;
   }
   
   #fourth{ /*아무거나*/
      width:1100px;
      height:300px;
      margin: auto;
      background: #FAF0E6;
   }
   
   #fifth{ /*팬션소개*/
      width:1100px;
      height:40px;
      margin: auto;
      background: #FFFAF0;
   }
</style>
</head>
<body>
   <div id="first">
      저희 팬션에 회원가입하시면 1박 공짜로 해드립니다.
   </div>
   
   <div id="second">
      <div id="left">차니팬션</div>
      <div id="right">
         <span id="menu">펜션소개</span>
         <span id="menu">주변시설</span>
         <span id="menu">예약관련</span>
         <span id="menu">커뮤니티
            <!-- SUBMENU -->
            <ul id="sub">
               <li>예약규정</li>
               <li>실시간 예약</li>
            </ul>
         </span>
         <span id="menu">로그인</span>
      </div>
   </div>
   
   <div id="third">
      <img src="img1.jpg" width="1100" height="400">
   </div>
   
   <div id="fourth">
      나중에!!~~
   </div>
   
   <div id="fifth">
      주소 : 서울시 구로구 구로동 차니펜션 <br>
      전화 : 010-1111-2222 <br>
      관리자: 나야나 (henry@gmail.com) <br>
   </div>
</body>
</html>
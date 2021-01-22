<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>       <!-- index.jsp -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    body {
      margin:0px;
    }
    #first {  /* 광고관련 1층 */
      width:1100px;
      height:30px;
      margin:auto;
      background:#f15657;
      text-align:center;
      padding-top:10px;
      color:white;
    }
    #second {  /* 로고, 메뉴 2층 */
      width:1100px;
      height:60px;
      margin:auto;
    }
    #second #left {
      padding-top:15px;
      width:100px;
      float:left;
    }
    #second #right {
      padding-top:15px;
      width:1000px;
      float:right;
      text-align:right;
    }
    #second #right #menu {
      display:inline-block;
      width:170px;
      height:30px; /* 주메뉴의 높이를 줘야 됩니다 */
      position:relative;
    }
    #second #right #menu .sub {
      position:absolute;
      width:120px;
      left:88px;
      top:10px;
      background:white;
      padding-left:0px;
      visibility:hidden;
      padding-top:10px;
 
    }
    #second #right #menu .sub li {
      list-style-type:none;
      text-align:center; /* 서브메뉴의 글자 중앙 */
    }
    #third {     /* 큰 사진 3층 */
      width:1100px;
      height:400px;
      margin:auto;
    } 
    #fourth {    /* 아무거나 4층 */
      width:1100px;
      height:300px;
      margin:auto;
    }
    #fifth {     /* 펜션소개 5층 */
      width:1100px;
      height:100px;
      margin:auto;
    } 
  </style>
  <script>
    function view_sub(n)
    {
    	document.getElementsByClassName("sub")[n].style.visibility="visible";
    }
    function hide_sub(n)
    {
    	document.getElementsByClassName("sub")[n].style.visibility="hidden";
    }
    var h=30;  // id=first 의  height=30
    var p=10;  // id=first의 padding-top:10px
    function first_close()  // 1번 호출이 되면 1층의 높이가 1px 줄어든다..
    {
    	h--;  // 1감소
    	document.getElementById("first").style.height=h+"px";
    	if(h>0)
    	  setTimeout(first_close,10);  // 이렇게 동작하면 무한루프
    	else
        {
    		p--;
    		document.getElementById("first").style.paddingTop=p+"px";
    		if(p>0)
    		   setTimeout(first_close,10);
    		else
    		   document.getElementById("first").style.display="none";
        }
    }
  </script>
</head>
<body>
  <div id="first">
     저희 펜션에 회원가입하시면  1박 공짜로 해드립니다 
   <span  style="cursor:pointer" onclick="first_close()"> X </span> 
  </div>
  <div id="second">
     <div id="left">차니펜션</div>
     <div id="right">
        <span id="menu" onmouseenter="view_sub(0)" onmouseleave="hide_sub(0)"> 펜션소개 
        <!-- 부메뉴 -->
           <ul class="sub">   
            <li> 우리펜션 </li>
            <li> 오시는길 </li>
           </ul>
        </span>
        <span id="menu" onmouseenter="view_sub(1)" onmouseleave="hide_sub(1)"> 주변시설 
        <!-- 부메뉴 -->
           <ul class="sub">
            <li> 만리포 </li>
            <li> 연포</li>
            <li> 채석정 </li>
           </ul>
        </span>
        <span id="menu" onmouseenter="view_sub(2)" onmouseleave="hide_sub(2)"> 예약관련 
         <!-- 부메뉴 -->
           <ul class="sub">
            <li>  예약 규정  </li>  
            <li> <a href="reserve/reserve.jsp">실시간 예약 </a></li> <!-- /reserve/reserve.jsp로 이동 -->
           </ul>
        </span>
        <span id="menu" onmouseenter="view_sub(3)" onmouseleave="hide_sub(3)"> 커뮤니티 
        <!-- 부메뉴 -->
           <ul class="sub">
            <li> 여행 후기 </li>
            <li> 자유게시판 </li>
           </ul>
        </span>
        <span id="menu"> 로그인 </span>
    </div>
  </div>
  <div id="third">
     <img src="1.jpg" width="1100" height="400">
  </div>
  <div id="fourth">
      나중에!!~~
  </div>
  <div id="fifth">
    주소 : 서울시 구로구 구로동 차니펜션 <br>
    전화 : 010-1111-2222 <br>
    관리자 : 나야나  (goalki@naver.com) <br>
  </div>

</body>
</html>
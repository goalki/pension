<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function imsi()
   {
	   // 탕수육의 글자를 빨강색으로
	   document.getElementsByClassName("tt")[2].style.color="red";
   }
 </script>
</head>
<body>
 <input type="button" value="id접근" onclick="imsi()">
  <div id="menu" class="tt"> 짜장면 </div>
  <div id="menu" class="tt"> 짬뽕 </div>
  <div id="menu" class="tt"> 탕수육 </div>
  <div id="menu" class="tt"> 감자탕 </div>
  <div id="menu" class="tt"> 동태탕 </div>
</body>
</html>
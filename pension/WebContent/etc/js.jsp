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
	  document.all.menu[2].style.color="red";
	  aaa.style.color="blue";
   }
 </script>
</head>
<body>
  <input type="button" value="id접근" onclick="imsi()">
  <div id="menu"> 짜장면 </div>
  <div id="menu"> 짬뽕 </div>
  <div id="menu"> 탕수육 </div>
  <div id="menu"> 감자탕 </div>
  <div id="menu"> 동태탕 </div>
  <div id="aaa"> 하하하 </div>
</body>
</html>
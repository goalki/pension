<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   #inner {
     width:800px;
     height:400px;
     background:red;
     margin:auto;
   }
 </style>
 <script>
  function test()
  {
	  var imsi=document.getElementsByClassName("imsi");
	  var chk=0;
	  for(i=0;i<imsi.length;i++)
		 if(imsi[i].value.length != 0)
			 chk++;
	  if(chk != 0)
		  alert("지워집니다");
  }
  function inn()
  {
	  event.stopPropagation(); 
  }
 </script>
</head>
<body onclick="test()">
  <div id="inner" onclick="event.stopPropagation()" >
     <textarea class="imsi"></textarea> <p>
     <textarea class="imsi"></textarea> <p>
     <textarea class="imsi"></textarea> <p>
  </div>
</body>
</html>
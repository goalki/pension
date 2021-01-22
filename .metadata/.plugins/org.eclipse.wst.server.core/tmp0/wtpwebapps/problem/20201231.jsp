<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="problem.dao.Dao" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
   Dao dao=new Dao();
   String today=dao.nalja();
   pageContext.setAttribute("today", today);
   
   int tot=dao.hap(80, 90, 70);
   pageContext.setAttribute("tot", tot);
%>
</head>
<body>
   1. Dao에 오늘의 년,월,일을 가져오는 메소드를 만든후 호출하여 여기에 날짜 출력 <p>
      날짜 : ${today}
   <hr>
   2. Dao에 국,영,수의 합계 구하는 메소드 생성 , 여기서 국,영,수의 점수를 넘기면 합을 리턴받아 출력 <p>
      합계  : ${tot}점
</body>
</html>
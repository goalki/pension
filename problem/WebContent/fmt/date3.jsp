<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
 </head>
 <body>   
   <h3> 현재 날짜 나타내기 </h3>
   &lt;c:set var="day1" value="&lt;%=new java.util.Date()%&gt;"/&gt;   
   <c:set var="day1" value="<%=new java.util.Date()%>"/> <br> ${day1}
   <hr>
   &lt;c:set var="day2" value="&lt;%=java.util.Calendar.getInstance()%&gt;"/&gt;   
   <c:set var="day2" value="<%=java.util.Calendar.getInstance()%>"/> <br> ${day2}
   <hr>
   &lt;c:set var="day3" value="&lt;%=LocalDateTime.now()%&gt;"/&gt; 
   <c:set var="day3" value="<%=java.time.LocalDateTime.now()%>"/> <br> ${day3}
   <hr>
 </body>
</html>
 
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
   <h3> 특정날짜 입력하기 </h3>
   &lt;c:set var="day1" value="&lt;%=new java.util.Date(2021-1900,5,5)%&gt;"/&gt;   
   <c:set var="day1" value="<%=new java.util.Date(2021-1900,5,5)%>"/> <br> ${day1}
   <hr>
   
   &lt;% <br>
      java.util.Calendar day2=java.util.Calendar.getInstance(); <br>
      day2.set(2021,5,5); <br>
   %&gt;  <br>
   &lt;c:set var="day2" value="&lt;%=day2%&gt; "/&gt; <br> 
 
    <%
      java.util.Calendar day2=java.util.Calendar.getInstance();
      day2.set(2021,5,5);
   %>  
   <c:set var="day2" value="<%=day2%>"/> ${day2} 
   <hr>
   &lt;c:set var="day3" value="&lt;%=LocalDate.of(2021,5,5)%&gt;"/&gt; 
   <c:set var="day3" value="<%=java.time.LocalDate.of(2021,5,5)%>"/> <br> ${day3}
   <hr>
 </body>
</html>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>   
 
   &lt;c:set var="day1" value="&lt;%=new java.util.Date()%&gt;"/&gt;   
   <c:set var="day1" value="<%=new java.util.Date()%>"/> <br> ${day1}
   <hr>
   &lt;c:set var="day2" value="&lt;%=java.util.Calendar.getInstance()%&gt;"/&gt;   
   <c:set var="day2" value="<%=java.util.Calendar.getInstance()%>"/> <br> ${day2}
   <hr>
   &lt;c:set var="day3" value="&lt;%=LocalDate.now()%&gt;"/&gt; 
   <c:set var="day3" value="<%=java.time.LocalDate.now()%>"/> <br> ${day3}
   <hr>
    
   <fmt:formatDate var="day3" value="${day1}" pattern="yyyy-MM-dd"/>
   <fmt:formatDate var="day4" value="${day2}" pattern="yyyy-MM-dd"/>   
   <fmt:formatDate var="day5" value="${day3}" pattern="yyyy-MM-dd"/> 
    
</body>
</html>
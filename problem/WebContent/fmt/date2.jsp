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
   <h3> 날짜를 el표현식으로 접근가능한 변수 만들기</h3> 
   <%pageContext.setAttribute("today1", new java.util.Date());%> ${today1} <p>
   <c:set var="today2" value="<%=new java.util.Date()%>"/>  ${today2} <p>
   <jsp:useBean id="today3" class="java.util.Date"/>  ${today3} <p>
   
 </body>
</html>
 
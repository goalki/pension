<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
    String[] TimeBtn={"0900","1400","1800","2000"};
    pageContext.setAttribute("TimeBtn", TimeBtn);
    
    java.time.LocalDateTime today=java.time.LocalDateTime.now();
    String h=today.getHour()+"";
    String m=today.getMinute()+"";
    String hm=h+":"+m;
    pageContext.setAttribute("hm", hm);
%>
<body>
   <c:forEach items="${TimeBtn}" var="t">
     <c:if test="${ hm>t }">
       <span style="background:gray"> ${fn:substring(t,0,2)}:${fn:substring(t,2,4)} </span>
     </c:if>
     <c:if test="${ hm<=t}">
        ${fn:substring(t,0,2)}:${fn:substring(t,2,4)}  
     </c:if>
   </c:forEach>
</body>
</html>
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
   <form name="pkc" method="post" action="view.jsp">
     <h3> 날짜를 입력하고 버튼을 클릭하면  해당 날짜로부터 100일, 1년 , 10년 뒤의 날짜를 보여줍니다.</h3>
     <select name="year">
      <c:forEach var="i" begin="2000" end="2030">
       <option value="${i}"> ${i} </option>
      </c:forEach>
     </select>
     <select name="month" onchange="check(this.value)">
      <c:forEach var="i" begin="1" end="12">
       <option value="${i}"> ${i} </option>
      </c:forEach>
     </select>
     <select name="day">
      <c:forEach var="i" begin="1" end="31">
       <option value="${i}"> ${i} </option>
      </c:forEach>
     </select>
     <input type="submit" value="확인하기">
   </form>
</body>
</html>
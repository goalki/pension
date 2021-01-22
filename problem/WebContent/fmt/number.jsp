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
   <%  
      pageContext.setAttribute("price", 2354000);
      pageContext.setAttribute("per", 0.34);
      pageContext.setAttribute("num", 2423754.1235);
   %>
   <h3> 숫자 표현 </h3>
   <fmt:formatNumber value="${price}"/> <br>
   <fmt:formatNumber value="${price}" type="number"/> <br>
   <fmt:formatNumber value="${price}" type="number" groupingUsed="true"/> <br>
   <fmt:formatNumber value="${price}" type="number" groupingUsed="false"/> <br>
   <fmt:formatNumber value="${price}" type="currency" currencySymbol="￦"/> <br>
   <fmt:formatNumber value="${per}" type="percent"/> <br>
   <fmt:formatNumber value="${num}" minIntegerDigits="9" minFractionDigits="3"/> <br>
   <fmt:formatNumber value="${num}" pattern=".00"/> <br>
   <fmt:formatNumber value="${num}" pattern="00000000000.00"/> <br>
   <fmt:formatNumber value="${num}" pattern="00,000,000,000.00"/> <br>
   <fmt:formatNumber value="${num}" pattern="#,#00"/> <br>
   <fmt:formatNumber value="${num}" pattern="#,#00.00"/> <br>
</body>
</html>
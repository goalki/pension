<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="problem.dto.MemberDto" %>
<%@page import="java.util.ArrayList" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%
    String[] name={"홍길동","배트맨","슈퍼맨","뽀로로","원더우먼"};
    String[] juso={"서울","인천","대구","광주","부산"};
    int[] age={50,60,35,27,45};
    
    // MemberDto클래스에 이름,주소, 나이를 넣어서 ArrayList에 저장후 출력하기
    // ArrayList<MemberDto> 이걸 통해서 출력
    ArrayList<MemberDto> list=new ArrayList<MemberDto>();
    for(int i=0;i<name.length;i++)
    {
    	MemberDto mdto=new MemberDto();
    	mdto.setName(name[i]);
    	mdto.setJuso(juso[i]);
    	mdto.setAge(age[i]);
    	list.add(mdto);
    }
    
    pageContext.setAttribute("list", list);
 %>
</head>
<body>
    <table width="300" align="center">
      <tr>
        <td> 이름 </td>
        <td> 나이 </td>
        <td> 주소 </td>
      </tr>
      <!-- 5명을 출력하세요 -->
     <c:forEach var="mdto" items="${list}">
      <tr>
        <td> ${mdto.name} </td>
        <td> ${mdto.age} </td>
        <td> ${mdto.juso} </td>
      </tr>
     </c:forEach>
    </table>
</body>
</html>
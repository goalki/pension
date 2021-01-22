<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../top.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page import="pension.dao.Dao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="pension.dto.ReserveDto" %>
<%
   // reserve테이블에 모두 읽어와서 출력
   Dao dao=new Dao();
   ArrayList<ReserveDto> list=dao.admin_reserve();
   pageContext.setAttribute("list", list);
%>
 <style>
  #section {
    width:1100px;
    height:400px;
    margin:auto;
    text-align:center;
  }
  #section #reserve {
    width:700px;
    margin:auto;
    margin-top:40px;
  }
 </style>
 <div id="section">
   <div id="reserve">
      <table width="700" align="center">
        <caption> <h3> 예약 현황 </h3> </caption>
        <tr>
          <td> 이 름 </td>
          <td> 전화번호 </td>
          <td> 숙소명 </td>
          <td> 입실일 </td>
          <td> 퇴실일 </td>
          <td> bbq </td>
          <td> 삼겹살 </td>
          <td> 예약일 </td>
        </tr>
       <c:forEach var="rdto" items="${list}">
        <tr>
          <td> ${rdto.name} </td>
          <td> ${rdto.phone} </td>
          <td> ${rdto.roomname} </td>
          <td> ${rdto.inday} </td>
          <td> ${rdto.outday} </td>
          <td> ${rdto.bbq} </td>
          <td> ${rdto.pork} </td>
          <td> ${rdto.writeday} </td>
        </tr>
       </c:forEach>
      </table>
   </div>
 </div>
 
<%@ include file="../bottom.jsp" %> 
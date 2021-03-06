<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.Dao" %>
<%@page import="pension.dto.ReserveDto" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../top.jsp" %> 
<%
   //  사용자가 방금 예약한 방의 정보들!!!
 
   Dao dao=new Dao();
   ReserveDto rdto=dao.get_reserve(session.getAttribute("userid").toString());
   pageContext.setAttribute("rdto", rdto);
%>    
 
 <div id="section">
   <table width="500" align="center" height="400">
     <caption> <h3> ${rdto.name}님의  예약내용입니다. </h3></caption>
     <tr>
      <td> 예약 방 </td>
      <td colspan="3">  ${rdto.roomname} </td>
     </tr>
     <tr>
      <td> 입실일 </td>
      <td> ${rdto.inday} </td>
      <td> 퇴실일 </td>
      <td> ${rdto.outday} </td>
     </tr>
     <tr>
      <td> 입실 인원 </td>
      <td colspan="3"> ${rdto.inwon1+rdto.inwon2+rdto.inwon3}명 </td>
     </tr>
     <tr>
      <td> 예약자 </td>
      <td colspan="3"> ${rdto.name} </td>
     </tr>
     <tr>
      <td> 전화번호 </td>
      <td colspan="3"> ${rdto.phone} </td>
     </tr>
     <tr>
      <td> 부대용품 신청 </td>
      <td>
                    바비큐세트 : ${rdto.bbq}개 <br>
                    삼겹살 : ${rdto.pork}kg 
      </td>
      <td> 비용 </td>
      <td> <fmt:formatNumber value="${rdto.etc_price}"/>원 </td>
     </tr>
     <tr>
      <td> 총 비용 </td>
      <td colspan="3"> <fmt:formatNumber value="${rdto.tot_price}"/>원 </td>
     </tr>
     <tr>
      <td colspan="4"> <a href="../main/index.jsp"> 메이페이지 가기 </a> </td>
     </tr>
   </table>
 </div>
 <%@ include file="../bottom.jsp" %> 
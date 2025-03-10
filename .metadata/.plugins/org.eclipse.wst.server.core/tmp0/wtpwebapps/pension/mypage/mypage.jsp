<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../top.jsp" %> 
<%@page import="pension.dao.Dao" %>
<%@page import="pension.dto.MemberDto" %>
<%@page import="pension.dto.ReserveDto" %>
<%
   Dao dao=new Dao();
   MemberDto mdto=dao.mypage(session.getAttribute("userid").toString());
   pageContext.setAttribute("mdto", mdto);
   
   java.util.ArrayList<ReserveDto> list=dao.my_reserve(session.getAttribute("userid").toString());
   pageContext.setAttribute("list",list);
%>
<style>
  #section {
    width:1100px;
    height:500px;
    margin:auto;
  }
  #section #my {
    width:600px;
    height:120px;
  }
  #section #reserve {
    width:600px;
    height:300px;
  }
 </style>
  <div id="section" align="center">
    <div id="my">  <!-- 회원 정보 : member테이블에 값을 가져온다..  => dao.mypage() -->
      <table width="300" align="center">
       <caption> <h3> 나의 회원정보 </h3></caption>
       <tr>
        <td> 이 름 </td>
        <td> ${mdto.name} </td>
       </tr>
       <tr>
        <td> 아이디 </td>
        <td> ${userid} </td>  <!-- 세션변수 -->
       </tr>
       <tr>
        <td> 전화번호 </td>
        <td> ${mdto.phone} </td>
       </tr>
       <tr>
      </table>
    </div> 
    <div id="reserve" style="margin-top:50px;"> <!-- 예약정보 : reserve 테이블에서 가져온다. => dao.my_reserve()-->
      <table width="590" align="center">
       <caption> <h3> 나의 예약 정보 </h3></caption>
       <tr align="center">
         <td> 숙소 </td>
         <td> 입실일 </td>
         <td> 퇴실일 </td>
         <td> bbq </td>
         <td> 삼겹살 </td>
         <td> 예약일 </td>
       </tr>
     <c:forEach var="rdto" items="${list}">  
       <tr align="center">
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
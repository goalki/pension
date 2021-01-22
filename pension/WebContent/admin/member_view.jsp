<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../top.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page import="pension.dao.Dao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="pension.dto.MemberDto" %>
<%
   // reserve테이블에 모두 읽어와서 출력
   Dao dao=new Dao();
   ArrayList<MemberDto> list=dao.admin_member();
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
        <caption> <h3> 회원 현황 </h3> </caption>
        <tr>
          <td> 이 름 </td>
          <td> 전화번호 </td>
          <td> 아이디 </td>
          <td> 가입일 </td>
          <td> 회원상태 </td>
        </tr>
       <c:forEach var="mdto" items="${list}">
         <c:if test="${mdto.state == 0}">
           <c:set var="state" value="정상회원"/>
         </c:if>
         <c:if test="${mdto.state == 1}">
           <c:set var="state" value="휴면회원"/>
         </c:if>
         <c:if test="${mdto.state == 2}">
           <c:set var="state" value="탈퇴회원"/>
         </c:if>
        <tr>
          <td> ${mdto.name} </td>
          <td> ${mdto.phone} </td>
          <td> ${mdto.userid} </td>
          <td> ${mdto.writeday} </td>
          <td> ${state} </td>
        </tr>
       </c:forEach>
      </table>
   </div>
 </div>
 
<%@ include file="../bottom.jsp" %> 
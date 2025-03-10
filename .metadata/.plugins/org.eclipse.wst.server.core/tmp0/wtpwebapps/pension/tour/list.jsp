<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>     
<%@page import="pension.dto.TourDto" %>  
<%@page import="pension.dao.Dao" %> 
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<%
   Dao dao=new Dao();
   ArrayList<TourDto> list=dao.tour_list();
   pageContext.setAttribute("list", list);
   //out.print(list.size());
%>    
<%@ include file="../top.jsp" %>    


 <style>
  #section {
    width:1100px;
    height:400px;
    margin:auto;
    text-align:center;
    
    margin-top:60px;
  }
  #section tr:first-child {
    background:#FFC6C6;
  }
  #section td {
    height:40px;
    border:1px solid #f15657;
    border-left:none;
    border-right:none;
    border-bottom:none;
  }
  #section #link {
    margin-top:40px;
    display:inline-block;
    width:206px;
    height:27px;
    background:#f15657;
    color:white;
    font-size:16px;
    font-weight:900;
    padding-top:10px;
  }
 </style>
 <div id="section">
   <!-- 레코드 내용 출력 -->
   <table width="800" align="center" cellspacing="0">
     <tr>
       <td> 이름 </td>
       <td> 제목 </td>
       <td> 사진 </td>
       <td> 작성일 </td>
     </tr>
    <c:forEach var="tdto" items="${list}">
     <tr>
       <td> ${tdto.name} </td>
       <td> <a href="content.jsp?id=${tdto.id}"> ${tdto.title} </a> </td>
       <td> <img src="img/${tdto.fname}" width="50"> </td>
       <td> ${tdto.writeday}  </td>
     </tr>
     </c:forEach>
     <tr height="50">
      <td colspan="4" align="center"> <a href="write.jsp" id="link"> 글쓰기 </a> </td>
     </tr>
   </table>
 </div>
 
<%@ include file="../bottom.jsp" %> 









<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.BoardDao"%>   
 <%@page import="java.sql.ResultSet" %>
<%@page import="pension.dto.BoardDto" %>
<%
   // request값 가져오기
   String id=request.getParameter("id");

   // DB_Conn 클래스에서 content()실행
   BoardDao bd=new BoardDao();
   BoardDto bdto=bd.content(id);
    
   pageContext.setAttribute("bdto", bdto);
   pageContext.setAttribute("pager", request.getParameter("pager"));
   // forEach문이 필요없습니다...
%>    
<%@ include file="../top.jsp" %>  
 <style>
  #section {
    width:1100px;
    height:400px;
    margin:auto;
    text-align:center;
  }
 </style>
 <div id="section">
    
  <!-- 출력 -->
  <table width="600" align="center">
    <tr>
     <td> 제목 </td>
     <td> ${bdto.title} </td>
    </tr>
    <tr>
     <td> 작성자 </td>
     <td> ${bdto.name} </td>
    </tr>
    <tr>
     <td> 내용 </td>
     <td> ${bdto.content}</td>
    </tr>
    <tr>
     <td> 조회수 </td>
     <td> ${bdto.readnum} </td>
    </tr>
    <tr>
     <td> 작성일 </td>
     <td> ${bdto.writeday} </td>
    </tr>
    <tr>
     <td colspan="2" align="center">
     <a href="update.jsp?id=${bdto.id}&pager=${pager}"> 수정 </a>
     <a href="delete.jsp?id=${bdto.id}&pager=${pager}"> 삭제 </a>
     <a href="list.jsp?pager=${pager}"> 목록 </a>
     </td>
    </tr>
  </table>
</div>
 
<%@ include file="../bottom.jsp" %> 
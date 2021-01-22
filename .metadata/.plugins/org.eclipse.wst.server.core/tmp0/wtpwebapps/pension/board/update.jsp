<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.BoardDao" %>   
<%@page import="java.sql.ResultSet" %>
<%@page import="pension.dto.BoardDto" %>
<%
   // request값 가져오기
   String id=request.getParameter("id");

   // DB_Conn 클래스에서 update()실행
   
   BoardDao bd=new BoardDao();
   BoardDto bdto=bd.update(id);
 
   pageContext.setAttribute("bdto", bdto);
   pageContext.setAttribute("pager", request.getParameter("pager"));
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
   
 <form method="post" action="update_ok.jsp">
  <input type="hidden" name="id" value="${bdto.id}">
  <input type="hidden" name="pager" value="${pager}">
  <table width="600" align="center">
    <caption> <h3> 글 수 정 </h3></caption>
    <tr>
     <td> 제 목 </td>
     <td> <input type="text" name="title" size="40" value="${bdto.title}"> </td>
    </tr>
    <tr>
     <td> 이 름 </td>
     <td> <input type="text" name="name" value="${bdto.name}"> </td>
    </tr>
    <tr>
     <td> 내 용 </td>
     <td> <textarea cols="40" rows="4" name="content">${bdto.content}</textarea> </td>
    </tr>
    <tr>
     <td> 비밀번호 </td>
     <td> <input type="password" name="pwd"> </td>
    </tr>
    <tr>
     <td colspan="2" align="center"> <input type="submit" value="수정">
    </tr>
  </table>
 </form>  
</div>
 
<%@ include file="../bottom.jsp" %> 
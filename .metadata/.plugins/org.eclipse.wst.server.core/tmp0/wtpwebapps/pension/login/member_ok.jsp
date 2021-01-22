<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.Dao" %>
<%
    request.setCharacterEncoding("utf-8");    
%>

<jsp:useBean id="mdto" class="pension.dto.MemberDto">
  <jsp:setProperty name="mdto" property="*"/>
</jsp:useBean>

<%
   Dao dao=new Dao();
   dao.member_ok(mdto);
   
   response.sendRedirect("login.jsp");
%>
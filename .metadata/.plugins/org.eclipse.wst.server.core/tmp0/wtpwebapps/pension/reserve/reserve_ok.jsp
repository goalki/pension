<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.Dao" %>   
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="rdto" class="pension.dto.ReserveDto">
  <jsp:setProperty name="rdto" property="*"/>
</jsp:useBean>
<!-- ReserveDto rdto=new ReserveDto(); => setter하는 동작 -->
<%
   Dao dao=new Dao();
   String userid=session.getAttribute("userid").toString();
   dao.insert(rdto,userid);
   response.sendRedirect("reserve_view.jsp");
%>
 

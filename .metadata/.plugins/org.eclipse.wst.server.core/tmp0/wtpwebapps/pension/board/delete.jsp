<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.BoardDao"%>      
<%
   // request
   String id=request.getParameter("id");
   
   // DB_Conn객체생성, update_ok메소드 호출
   BoardDao bd=new BoardDao();
   bd.delete(id);
   
   // 이동
   response.sendRedirect("list.jsp?pager="+request.getParameter("pager"));
%>   
   
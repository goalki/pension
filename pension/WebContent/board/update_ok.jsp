<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.BoardDao"%> 
<%@page import="pension.dto.BoardDto" %>  
<%
   // request
   request.setCharacterEncoding("utf-8");
   String name=request.getParameter("name");
   String title=request.getParameter("title");
   String content=request.getParameter("content");
   int id=Integer.parseInt(request.getParameter("id"));
   
   // DB_Conn객체생성, update_ok메소드 호출
   BoardDao bd=new BoardDao();
   
   BoardDto bdto=new BoardDto();
   bdto.setTitle(title);
   bdto.setName(name);
   bdto.setContent(content);
   bdto.setId(id);
   bd.udpate_ok(bdto);
   // 이동
   response.sendRedirect("content.jsp?id="+id+"&pager="+request.getParameter("pager"));

%>
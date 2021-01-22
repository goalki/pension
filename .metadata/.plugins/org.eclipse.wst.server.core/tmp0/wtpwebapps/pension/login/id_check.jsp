<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.Dao" %>    
<%
   // 입력한 userid값을 읽어오기
   String userid=request.getParameter("userid");

   Dao dao=new Dao();
   int chk=dao.isuserid(userid);
   
   out.print(chk);  // 0아니면 1
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>    
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="pension.dto.TourDto" %>  
<%@page import="pension.dao.Dao" %>
      
<%
     // cos.jar 라이브러리를 통해 파일을 업로드시킨다..
     String path=request.getRealPath("tour/img");
     int size=1024*1024*10; 
     String han="utf-8";
     MultipartRequest multi=new MultipartRequest(request,path,size,han,new DefaultFileRenamePolicy());
     
     TourDto tdto=new TourDto();     
     tdto.setTitle(multi.getParameter("title"));
     tdto.setName(multi.getParameter("name"));
     tdto.setContent(multi.getParameter("content"));
     tdto.setFname(multi.getFilesystemName("fname"));  // 서버에 저장되는 이름
   
 
     Dao dao=new Dao();
     dao.tour_write_ok(tdto);
      response.sendRedirect("list.jsp");
    
     
%> 
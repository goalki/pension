<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../top.jsp" %>  
<%@page import="pension.dao.Dao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%
    // 입력값을 가져오기
    request.setCharacterEncoding("utf-8");
    String userid=request.getParameter("userid");
    String name=request.getParameter("name");
    String phone=request.getParameter("phone");
    Dao dao=new Dao();
    String pwd=dao.pwd_search(userid,name, phone);
    pageContext.setAttribute("pwd", pwd);
    pageContext.setAttribute("name",name);
%>
 <style>
  #section {
    width:1100px;
    height:400px;
    margin:auto;
    text-align:center;
  }
  #section #userid {
    width:600px;
    margin:auto;
    margin-top:30px;
  }
  #section input[type=button] {
    width:150px;
    height:34px;
    background:#f15657;
    color:white;
    font-weight:900;
    border:none;
    margin-top:30px;
  }
   </style>
  
 <div id="section">
  <c:if test="${pwd != '0'}">
   <div id="userid"> ${name}님의 비밀번호 : ${pwd} 입니다.</div>
   <div id="button">
     <input type="button" onclick="location='login.jsp'" value="로그인"> 
   </div>
  </c:if>
  <c:if test="${pwd == '0'}">
   <div id="userid"> ${name}님의 입력 정보가 잘못되었습니다.  </div>
   <div id="button"> <input type="button" onclick="location='pwd_search.jsp'" value="비밀번호찾기">  </div>
  </c:if>
 </div>
 
<%@ include file="../bottom.jsp" %> 




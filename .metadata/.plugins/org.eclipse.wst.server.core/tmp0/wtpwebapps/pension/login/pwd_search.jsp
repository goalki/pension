<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../top.jsp" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

 <style>
  #section {
    width:1100px;
    height:400px;
    margin:auto;
    text-align:center;
  }
  #form {
    width:400px;
    height:300px;
    margin:auto;
    margin-top:100px;
  }
  #form input{
    width:300px;
    height:40px;
    border:1px solid #f15657;
    margin-top:20px;
    font-size:18px;
  }
  #form input[type=submit] {
    width:306px;
    height:44px;
    background:#f15657;
    color:white;
    font-weight:900;
  }
 </style>
 <%
    String chk=request.getParameter("chk");
    pageContext.setAttribute("chk", chk);
 %>
 <div id="section">
  <div id="form">
   <form method="post" action="pwd_search_ok.jsp">
    <div id="userid"> <input type="text" name="userid" placeholder="아이디" autocomplete="off"> </div> 
    <div id="name"> <input type="text" name="name" placeholder="이 름" autocomplete="off"> </div> 
    <div id="phone"> <input type="text" name="phone" placeholder="전화번호"> 
      <c:if test="${chk == 1}">
       <br> <span style="color:red;font-size:12px"> 정보가 틀립니다 </span>
      </c:if> 
    </div> 
    <div id="submit"> <input type="submit" value="비밀번호 찾기"> </div>
      </form> 
  </div>
 </div>
 
<%@ include file="../bottom.jsp" %> 
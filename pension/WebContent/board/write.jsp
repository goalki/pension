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
 </style>
 <div id="section">
 <form method="post" action="write_ok.jsp">
  <table width="600" align="center">
    <caption> <h3> 글 쓰 기 </h3></caption>
    <tr>
     <td> 제 목 </td>
     <td> <input type="text" name="title" size="40" autocomplete="off"> </td>
    </tr>
    <tr>
     <td> 이 름 </td>
     <td> <input type="text" name="name" autocomplete="off"> </td>
    </tr>
    <tr>
     <td> 내 용 </td>
     <td> <textarea cols="40" rows="4" name="content" autocomplete="off"></textarea> </td>
    </tr>
    <tr>
     <td> 비밀번호 </td>
     <td> <input type="password" name="pwd" autocomplete="off"> </td>
    </tr>
    <tr>
     <td colspan="2" align="center"> <input type="submit" value="저장">
    </tr>
  </table>
 </form>  
 </div>
 
<%@ include file="../bottom.jsp" %> 
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
    margin-top:60px;
  }
  #section td {
    text-align:left;
    padding-top:10px;
  }
  #section #submit {
    text-align:center;
  }
 
 </style>
 <div id="section">
  <form method="post" action="write_ok.jsp" enctype="multipart/form-data">
     <table width="500" align="center">
      <tr>
       <td width="60"> 제목  </td>
       <td> <input type="text" name="title" size="50"> </td>
      </tr>
      <tr>
       <td> 이름  </td>
       <td> <input type="text" name="name"> </td>
      </tr>
      <tr>
       <td> 내용 </td>
       <td> <textarea cols="50" rows="3" name="content"></textarea> </td>
      </tr>
      <tr>
       <td> 사진 </td>
       <td> <input type="file" name="fname"> </td>
      </tr>
      <tr>
       <td colspan="2" id="submit"> <input type="submit" value="후기남기기"> </td>
      </tr>
     </table>
  </form>
  </div>
 
<%@ include file="../bottom.jsp" %> 








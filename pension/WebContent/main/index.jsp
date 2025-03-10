<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../top.jsp" %>  
<%@page import="pension.dto.TourDto" %>  
<%@page import="pension.dao.Dao" %> 
<%@page import="pension.dto.BoardDto" %>
<%@page import="pension.dao.BoardDao" %>
<%@page import="java.util.ArrayList" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
   // 자유게시판에서 5개 레코드만!!
   Dao dao=new Dao();
   ArrayList<TourDto> tlist=dao.get_five();
   pageContext.setAttribute("tlist", tlist);
   // 여행후기에서 5개 레코드만
   BoardDao bdao=new BoardDao();
   ArrayList<BoardDto> blist=bdao.get_five();
   pageContext.setAttribute("blist", blist);
%>
  <style>
  #third {     /* 큰 사진 3층 */
      width:1100px;
      height:400px;
      margin:auto;
    } 
    #fourth {    /* 아무거나 4층 */
      width:1100px;
      height:300px;
      margin:auto;
      margin-top:20px;
    }
    #fourth #left{
      float:left;
    }
    #fourth #right {
      float:right;
    }
  </style>
  <div id="third">
     <img src="../1.jpg" width="1100" height="400">
  </div>
  <div id="fourth">
    <div id="left">
      <table width="500">
       <caption> <h3> 여행후기 </h3></caption>
       <c:forEach var="tdto" items="${tlist}">
       <tr>
        <td> ${tdto.name} </td>
        <td> ${tdto.title} </td>
        <td> ${tdto.writeday} </td>
       </tr>
       </c:forEach>
      </table>
    </div>
    <div id="right">
    <table width="500">
       <caption> <h3> 자유게시판 </h3></caption>
       <c:forEach var="bdto" items="${blist}">
       <tr>
        <td> ${bdto.name} </td>
        <td> ${bdto.title} </td>
        <td> ${bdto.writeday} </td>
       </tr>
       </c:forEach>
      </table>
    </div>
  </div>
 <%@ include file="../bottom.jsp" %> 
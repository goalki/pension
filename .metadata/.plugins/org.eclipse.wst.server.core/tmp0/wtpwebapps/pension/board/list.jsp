<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="pension.dao.BoardDao"%> 
<%@page import="java.sql.ResultSet" %>  
<%@page import="java.util.ArrayList" %>
<%@page import="pension.dto.BoardDto" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
 <style>
  #section {
    width:1100px;
    height:400px;
    margin:auto;
    text-align:center;
  }
 </style>
 <div id="section">
<%
   // list메소드를 포함한 클래스 객체를 생성
   BoardDao bd=new BoardDao();
   int pager=0;
   if(request.getParameter("pager")==null)
	   pager=1;
   else
	   pager=Integer.parseInt(request.getParameter("pager"));
   ArrayList<BoardDto> list=bd.list(pager); // 페이지에 해당하는 레코드를 가져옴
   // 링크할 페이지를 출력하기 위한 변수들 생성 => pstart, pend, page_cnt
   // 1.전체페이지값
   int chong=bd.all_record(); // 총레코드수
   int page_cnt=chong/10; // 1~9까지의 레코드는 포함이 안된다..
   if(chong%10 != 0)
	  page_cnt=page_cnt+1;  
   // 2. pstart, pend값 구하기
    int pstart=pager/10;
	if(pager%10 == 0)
		pstart=pstart-1;
	pstart=pstart*10+1;
	
	int pend=pstart+9;
	// 마지막 페이지 그룹에서는 pend가 pstart+9보다 작을수 있다..
	if(pend > page_cnt)
		pend=page_cnt; 
   pageContext.setAttribute("page_cnt", page_cnt);
   pageContext.setAttribute("pstart", pstart);
   pageContext.setAttribute("pend", pend);
   pageContext.setAttribute("pager", pager);
   pageContext.setAttribute("list", list);
%>    
 
 <table width="600" align="center">
  <tr>
   <td> 이름 </td>
   <td> 제목 </td>
   <td> 조회수 </td>
   <td> 작성일 </td>
  </tr>
 <c:forEach items="${list}" var="bdto">
  <tr>
   <td> ${bdto.name} </td>
   <td> <a href="content.jsp?id=${bdto.id}&pager=${pager}"> ${bdto.title} </a></td>
   <td> ${bdto.readnum} </td>
   <td> ${bdto.writeday} </td>
  </tr>
 </c:forEach>
 <tr>
     <td colspan="4" align="center"> 
   <!-- 이전페이지 이동( 1페이지, 이전그룹페이지 ) -->
     <!-- 이전 그룹페이지 이동 시작 -->
     <c:if test="${pstart != 1}">
       <a href="list.jsp?pager=${pstart-1}"> ◀◀ </a>
     </c:if>
     <c:if test="${pstart == 1}">
                   ◀◀
     </c:if>
     <!-- 이전 그룹페이지 이동 끝 -->
     <!-- 이전 1페이지 이동 시작 -->
     <c:if test="${pager != 1}">
       <a href="list.jsp?pager=${pager-1}"> ◀ </a>
     </c:if>
     <c:if test="${pager == 1}"> 
                    ◀
     </c:if>
     <!-- 이전 1페이지 이동 끝 -->
     <!-- pstart부터 pend까지 출력 -->
       <c:forEach var="i" begin="${pstart}" end="${pend}">
         <c:if test="${pager != i}"> 
           <a href="list.jsp?pager=${i}"> ${i} </a>
         </c:if>
         <c:if test="${pager == i}">
           <a href="list.jsp?pager=${i}" style="color:red"> ${i} </a>
         </c:if>
       </c:forEach>    
     <!-- 다음페이지 이동( 1페이지, 다음그룹페이지)  -->   
      <!-- 1페이지 다음 이동 시작 -->
      <c:if test="${pager != page_cnt}">
       <a href="list.jsp?pager=${pager+1}"> ▶ </a>
      </c:if>
      <c:if test="${pager == page_cnt}">
                   ▶
      </c:if>                   
      <!-- 1페이지 다음 이동 끝 -->
      <!-- 다음 그룹 페이지 이동 시작 -->
      <c:if test="${pend != page_cnt}">
       <a href="list.jsp?pager=${pend+1}"> ▶▶  </a>
      </c:if>
      <c:if test="${pend == page_cnt}">
                    ▶▶
      </c:if>
      <!-- 다음 그룹 페이지 이동 끝 -->
     </td>
   </tr> 
 <%
    bd.conn_close(); // connection  종료
 %>
  <tr>
   <td colspan="4" align="center"> <a href="write.jsp"> 글쓰기 </a> </td>
  </tr>
 </table>
  </div>
 
<%@ include file="../bottom.jsp" %> 








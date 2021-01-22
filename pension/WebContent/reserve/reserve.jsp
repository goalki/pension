<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDate" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
    
<%
   // 달력을 만들기 위해 필요한 값  => 해당월의  총일수, 해당월의 1일의 요일 , 해당월의 주 수
   // 이번달 달력
   int y;
   int m;
   if(request.getParameter("y")==null)
   {
       LocalDate today=LocalDate.now(); // 현재시간
       y=today.getYear();
       m=today.getMonthValue();
   }
   else
   {
	   y=Integer.parseInt(request.getParameter("y"));
	   m=Integer.parseInt(request.getParameter("m"));
   }
   // 1일의 요일을 구하기전에   ?년 ?월 1일에 대한 날짜 객체를 생성
   // 이전 년도와 이후 년도 구하기
   int y1,y2;
   int m1,m2;
   LocalDate now=LocalDate.of(y,m,1);
   y1=now.minusMonths(1).getYear();
   m1=now.minusMonths(1).getMonthValue();
   y2=now.plusMonths(1).getYear();
   m2=now.plusMonths(1).getMonthValue();
   pageContext.setAttribute("y1", y1);
   pageContext.setAttribute("m1", m1);
   pageContext.setAttribute("y2", y2);
   pageContext.setAttribute("m2", m2);   
   
   LocalDate dday=LocalDate.of(y,m,1);  // of(y,m,d) => 해당 년,월,일의 객체가 생성
   int yoil=dday.getDayOfWeek().getValue(); // 요일의 값을 숫자로 => 1~7(월~일)까지의 값  
   if(yoil==7)
	   yoil=0; // 일 => 0
   
   double chong=dday.lengthOfMonth(); // 총일수를 구하는 메소드   
   int ju=(int)Math.ceil((chong+yoil)/7);   // (31+2)/7 =>  33/7 => 4.xx
%>    
<%@page import="pension.dao.Dao" %>
<%@page import="java.util.ArrayList" %>
<%@page import="pension.dto.RoomDto" %>
 <% // room테이블에서 우리 펜션의 방의 이름을 가져오기
     Dao dao=new Dao();
     ArrayList<RoomDto> list=dao.get_room();
     pageContext.setAttribute("list", list);
     
     // el표현식으로 접근하기 위해 pageContext영역에 변수를 setter해야된다..
     // ju(주), chong(총일수), yoil(요일), y , m
     pageContext.setAttribute("ju",ju);
     pageContext.setAttribute("chong",chong);
     pageContext.setAttribute("yoil",yoil);
     pageContext.setAttribute("y",y);
     pageContext.setAttribute("m",m);	
 
 %> 
 
 
<%@ include file="../top.jsp" %> 
<style>
  #section {
    width:1100px;
    height:1050px;
    margin:auto;
 
  }
  #section td {
    font-size:13px;
    width:100px;
    border:1px solid #f15657;
    color:black;
  }
 </style>
 <div id="section">
   <table   align="center" border="0" cellspacing="5">
    <caption> <h3> <a href="reserve.jsp?y=${y1}&m=${m1}"> ◀  </a> ${y}년 ${m} 월 <a href="reserve.jsp?y=${y2}&m=${m2}"> ▶  </a> </h3> </caption>
   <c:set var="day" value="1"/> <!-- pageContext 영역에 만들어진다. -->
   <fmt:formatDate var="today" value="<%=new java.util.Date()%>" pattern="yyyy-MM-dd"/>  
   <c:forEach var="i" begin="1" end="${ju}"> <!-- 1주씩 출력 -->
     <tr>
     <c:forEach var="j" begin="0" end="6">   <!-- 각 주에 들어가는 일 -->
       <c:if test="${(j<yoil && i==1) || chong < day }"> <!-- 빈칸출력 -->
         <td> &nbsp; </td>  <!-- 값이 출력되지않는 td  j의 값이 yoil보다 작을때 -->
       </c:if>
       <c:if test="${((j>=yoil && i==1) || i>1) && chong >= day}">  <!-- 날짜 출력 -->
        <td> ${day} <p> <!-- y,m,day => 년,월,일 -->
        <!-- 추가된 내용 -->
         <% // pageContext => 스크립트릿
            int day=Integer.parseInt(pageContext.getAttribute("day").toString());
         %>
          <c:set var="dday" value="<%=new java.util.Date(y-1900,m-1,day)%>"/>  
          <fmt:formatDate var="dday" value="${dday}" pattern="yyyy-MM-dd"/>  
           
         <c:if test="${dday  >= today}"> <!-- 달력에 출력되는 날짜가 오늘 이후인 경우는 true -->
          <c:forEach var="rdto" items="${list}">  <!-- reserve_next.jsp : 날짜, 방이름 -->
           <!-- room_state메소드에 필요한 rid값을 읽어오기 -->
           <c:set var="rid" value="${rdto.id}"/>
           <%
              String rid=pageContext.getAttribute("rid").toString();
              String xday=pageContext.getAttribute("dday").toString();
              // Dao에 있는 room_state메소드를 호출
              int chk=dao.room_state(rid, xday);
              pageContext.setAttribute("chk", chk);
              //out.print(chk);
           %>
           <c:if test="${chk == 0}">
            <span style="color:blue;font-weight:900;"> 가 </span><a href="reserve_next.jsp?y=${y}&m=${m}&day=${day}&id=${rdto.id}"> ${rdto.name} </a> <br>
           </c:if>
           <c:if test="${chk != 0}">
            <span style="color:red;font-weight:900;"> 불 </span><span> ${rdto.name} </span><br>
           </c:if>
            
          </c:forEach>  <!-- 달력의 날짜마다 방이름을 출력하는 문장 -->
         </c:if>
        </td>
        <c:set var="day" value="${day+1}"/>
       </c:if>
       
      </c:forEach>  <!-- 각주의 일이 출력되는 루프 끝 -->
     </tr>
    </c:forEach> <!-- 주가 출력되는 루프 끝-->
   </table>
 </div>

<%@ include file="../bottom.jsp" %> 










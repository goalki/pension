<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
              <c:set var="d" value="1"/>
                 <c:forEach var="i" begin="1" end="${ju }">
                 <tr>
                  <c:forEach var="j" begin="0" end="6">
                  <c:if test="${(i==1 and j<yoil) || d>end}">
                      <td> &nbsp;</td>
                   </c:if>
                  <c:if test="${((i==1 and j>=yoil) || i>1) and d<=end}">
                     <c:if test="${day>d}">
                         <td ><a href="#" day="${d }" class="rdateBtn noSelect">${d }</a> </td>
                      </c:if>
                      <c:if test="${day<=d}">
                         <td ><a href="#" day="${d }" class="rdateBtn">${d }</a> </td>
                      </c:if>
                      <c:set var="d" value="${d+1 }"/>
                   </c:if>
                  </c:forEach>
               </tr>
            </c:forEach>
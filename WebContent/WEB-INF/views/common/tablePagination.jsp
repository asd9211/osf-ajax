<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:if test="${1!=page}">
	<a href="/addr/list?page=${1}&pageCount=${pageCount}">◀</a>
</c:if>
<c:if test="${page>=11}"> 
	<a href="/addr/list?page=${page-10}&pageCount=${pageCount}">◁</a>
</c:if>
<c:forEach var="p" begin="${fBlock}" end="${lBlock}">
	<c:if test="${p==page}">
		<b>[${p}]</b>
	</c:if>
	<c:if test="${p!=page}">
		<a href="/addr/list?page=${p}&pageCount=${pageCount}">[${p}]</a>
	</c:if>
</c:forEach>
<c:if test="${(totalPageCnt-10)>=page}"> 
	<a href="/addr/list?page=${page+10}&pageCount=${pageCount}">▷</a>
</c:if>
<c:if test="${totalPageCnt!=page}">
	<a href="/addr/list?page=${totalPageCnt}&pageCount=${pageCount}">▶</a>
</c:if>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="jstl1.jsp"></c:import>
	<c:if test="${30>20 }">
		<p>true</p>
	</c:if>
	
	<c:set var="score" value="5"></c:set>
	<c:out value="${score }"></c:out>
	
	<c:choose>
		<c:when test="${score>20 }">
			<p>값이 참</p>
		</c:when>
		<c:otherwise>
			<p>값이 거짓</p>
		</c:otherwise>
	</c:choose>
	
	<c:set var="mathScore" value="80"></c:set>
	
	<c:choose>
		<c:when test="${mathScore>=90 }">
			<p>a학점이빈다</p>
		</c:when>
		<c:when test="${mathScore>=80 }">
			<p>b학점이빈다</p>
		</c:when>
		<c:when test="${mathScore>=70 }">
			<p>c학점이빈다</p>
		</c:when>
		<c:otherwise>
			<p>f학점이빈다</p>
		</c:otherwise>
	</c:choose>
	
	<c:choose>
		<c:when test="${!empty loginId }">
			<p>이름: <c:out value="${loginName }"></c:out></p>
		</c:when>
		<c:otherwise>
			<p>손님임다</p>
		</c:otherwise>
	</c:choose>
</body>
</html>
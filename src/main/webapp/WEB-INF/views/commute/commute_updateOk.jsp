<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="root" value="${pageContext.request.contextPath}"/>
	<c:if test="${check>0}">
		<script type="text/javascript">
			alert("수정된 근퇴가 등록되었습니다.");
			self.close();
		</script>
	</c:if>
	<c:if test="${check==0}">
		<script type="text/javascript">
			alert("근퇴수정에 실패했습니다. 다시 시도해주세요.");
			location.href="${root}/commute/commuteMain";
		</script>
	</c:if>
</body>
</html>
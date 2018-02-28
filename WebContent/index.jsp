<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원제 게시판 예제</title>
</head>
<body>
<c:if test="${!empty authUser }">
CT: ${authUser.name }님, 안녕하세요.
<a href="logout.do">[로그아웃하기]</a>
<a href="changePwd.do">[암호변경하기]</a>
</c:if>

<c:if test="${empty authUser }">
CT:<a href="join.do">[회원가입하기]</a>
<a href="login.do">[로그인하기]</a>
</c:if>		<!-- 코어태그에는 else가 없음. if문으로 여러 개 써야함 -->
<br/>
</body>
</html>
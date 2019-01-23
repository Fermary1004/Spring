<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
	${user.id}님 환영합니다! 이곳은 임시 보드입니다
	<a href="<%= request.getContextPath() %>/bbs/write">
		글쓰기
	</a>
<div>
	<a href="<%= request.getContextPath() %>/">
		<button type="button">Login</button>
	</a>
</div>
</body>
</html>
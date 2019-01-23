<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>Board</title>
<style>
	.table {
		width: 600px;
	}
	.id {
		width: 100px;
	}
	.title {
		width: 300px;
	}
</style>
</head>
<body>
	${user.id}님 환영합니다! 이곳은 임시 보드입니다
		<table class="table table-striped table-hover">
	    <thead>
	      <tr>
	        <th class="id">글 번호</th>
	        <th class="title">제목</th>
	        <th class="writer">작성자</th>
	      </tr>
	    </thead>
	    <tbody>
	    	<c:forEach items="${list}" var="board">
				<!-- forEach items : 어느 오브젝트를 불러와서 each문을 돌릴지 정해주는 부분 -->
				<!-- forEach var : 불러온 오브젝트를 어떻게 명명할지 정해주는 부분 -->
	      <tr>
	        <td>${board.id}</td>
					<td>${board.title}</td>
					<td>${board.writer}</td>
	      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
	<hr>
	<br>
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
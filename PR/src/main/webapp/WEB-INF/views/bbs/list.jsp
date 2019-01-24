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
	<div class="jumbotron">
	  <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${user.id}<c:if test="${user.id == null}">방문자</c:if>님 환영합니다! 이곳은 임시 보드입니다!</h1>  
  </div>
	<div class="container">
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
					<td><a href="<%= request.getContextPath() %>/bbs/detail?id=${board.id}">${board.title}</a></td>
					<td>${board.writer}</td>
	      </tr>
	      </c:forEach>
	    </tbody>
	  </table>
		<hr>
		<br>
		<div>
			<a href="<%= request.getContextPath() %>/bbs/register">
				<button class="btn btn-primary col-sm-2">글쓰기</button></a>
			<a href="<%= request.getContextPath() %>/signout">
				<button class="btn btn-secondary">로그아웃</button></a>
		</div>
	</div>
</body>
</html>
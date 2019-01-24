<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계시글 수정</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body>
	<div class="jumbotron">
  	<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시글 수정</h1>  
  </div>
	<div class="container">
		<form action="<%= request.getContextPath()%>/bbs/update" method="post">
			<div class="form-group">
			  <label for="id">글 번호 :</label>
			  <input type="text" class="form-control col-6" id="id" name="id" value="${detail.id}" readonly>
			</div>
			<div class="form-group">
			  <label for="title">제목 :</label>
			  <input type="text" class="form-control col-6" id="title" name="title" value="${detail.title}">
			</div>
			<div class="form-group">
			  <label for="writer">작성자 :</label>
			  <input type="text" class="form-control col-6" id="writer" name="writer" value="${detail.writer}" readonly>
			</div>
			<div class="form-group">
			  <label for="content">내용 :</label>
			  <textarea rows="10" class="form-control col-6" id="content" name="content">${detail.content}</textarea>
			</div>
			<button class="btn btn-outline-primary" type="submit">수정</button>
		</form>
	</div>
</body>
</html>
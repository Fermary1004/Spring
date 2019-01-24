<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계시글 등록</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
	  	<h1>게시글 등록</h1>  
	  </div>
		<form action="<%= request.getContextPath()%>/bbs/register" method="post">
			<div class="form-group">
			  <label for="title">제목 :</label>
			  <input type="text" class="form-control col-6" id="title" name="title">
			</div>
			<div class="form-group">
			  <label for="writer">작성자 :</label>
			  <input type="text" class="form-control col-6" id="writer" name="writer" value="${user.id}" readonly>
			</div>
			<div class="form-group">
			  <label for="content">내용 :</label>
			  <textarea rows="10" class="form-control col-6" id="content" name="content"></textarea>
			</div>
			<button class="btn btn-outline-primary" type="submit">등록</button>
		</form>
	</div>
</body>
</html>
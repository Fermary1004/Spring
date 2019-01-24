<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
	  	<h1>게시글 상세</h1>  
	  </div>
			<div class="form-group">
			  <label for="title">제목 :</label>
			  <input type="text" class="form-control col-6" id="title" name="title" value="${detail.title}" readonly>
			</div>
			<div class="form-group">
			  <label for="writer">작성자 :</label>
			  <input type="text" class="form-control col-6" id="writer" name="writer" value="${detail.writer}" readonly>
			</div>
			<div class="form-group">
			  <label for="content">내용 :</label>
			  <textarea rows="10" class="form-control col-6" id="content" name="content" readonly>${detail.content}</textarea>
			</div>
			<div class="form-group">
			  <label for="registered_date">작성일시 :</label>
			  <input type="text" class="form-control col-6" id="registered_date" name="registered_date" value="${detail.registered_date}" readonly>
			</div>
			<a href="<%= request.getContextPath() %>/bbs/list">
				<button class="btn btn-outline-primary" type="button">뒤로가기</button>
			</a>
	</div>
</body>
</html>
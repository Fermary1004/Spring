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
	<div class="jumbotron">
  	<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시글 상세</h1>  
  </div>
	<div class="container">
  	<div class="form-group">
		  <label for="id">글 번호 :</label>
		  <input type="text" class="form-control col-6" id="id" name="id" value="${detail.id}" readonly>
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
			<button class="btn btn-outline-primary" type="button">뒤로가기</button></a>
		<c:if test="${detail.writer == user.id || user.authority == 'admin'}">
		<a href="<%= request.getContextPath() %>/bbs/update?id=${detail.id}">
			<button class="btn btn-outline-danger" type="button">수정</button></a>
		<a href="<%= request.getContextPath() %>/bbs/delete?id=${detail.id}">
			<button class="btn btn-outline-secondary" type="button">삭제</button></a></c:if>
	</div>
</body>
</html>
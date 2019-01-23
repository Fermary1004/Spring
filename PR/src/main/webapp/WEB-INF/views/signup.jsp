<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<head>
	<title>회원가입</title>
</head>
<style>
	.backward {
		position: absolute;
		top: 531px;
		left: 180px;
	}
</style>
<body>
	<div class="jumbotron">
	  <h1>회 원 가 입</h1>  
	</div>
	<div class="container">	
		<form action="<%= request.getContextPath() %>/signup" method="post" id="signup">
			<div class="form-group col-sm-4 row">
			  <label for="id">
			  	<b>ID :</b>
			  </label>
			  <input type="text" class="form-control" name="id" id="id">
			</div>
			<div class="form-group col-sm-4 row">
			  <label for="pw">
			  	<b>PASSWORD :</b>
			  </label>
			  <input type="password" class="form-control" name="pw" id="pw">
			</div>
			<div class="form-group col-sm-4 row">
			  <label for="email">
			  	<b>E-MAIL :</b>
			  </label>
			  <input type="email" class="form-control" name="email" id="email">
			</div>
			<div class="form-check-inline">
			  <label class="form-check-label" for="male">
			    <input type="radio" class="form-check-input" name="gender" id="male" value="male" checked>Male
			  </label>
			</div>
			<div class="form-check-inline">
			  <label class="form-check-label" for="female">
			    <input type="radio" class="form-check-input" name="gender" id="female" value="female">Female
			  </label>
			</div>
			<hr>
			<div class="form-group">
				<button type="submit" class="btn btn-primary col-sm-1">확인</button>
			</div>
		</form>
		<div class="backward">
			<a href="<%= request.getContextPath() %>/">
				<button type="button" class="btn btn-secondary">뒤로가기</button>
			</a>
		</div>
	</div>
</body>
</html>
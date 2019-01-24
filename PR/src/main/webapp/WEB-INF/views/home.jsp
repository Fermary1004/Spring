<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- web.xml에도 filter를 추가해야함을 주의 -->

<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<head>
	<title>Home</title>
<style>
	.signupbtn {
		position: absolute;
		top: 405px;
		left: 220px;
	}
	.bbsbtn {
		position: absolute;
		top: 405px;
		left: 320px;
	}
</style>
</head>
<body>
	<div class="jumbotron">
	  <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hellooo Hellooo Heeello</h1>  
	</div>
	<div class="container">
		<form action="<%= request.getContextPath() %>/" method="post">
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
			<hr>
			<div class="form-group">
				<button type="submit" class="btn btn-primary col-sm-1">로그인</button>
			</div>
		</form>
		<div class="signupbtn">
			<a href="<%= request.getContextPath() %>/signup">
				<button type="button" class="btn btn-danger">회원가입</button>
			</a>
		</div>
		<div class="bbsbtn">
			<a href="<%= request.getContextPath() %>/bbs/list">
				<button type="button" class="btn btn-secondary">비회원 둘러보기</button>
			</a>
		</div>
	</div>
</body>
</html>

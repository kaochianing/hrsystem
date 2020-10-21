<%--
网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
author  yeeku.H.lee kongyeeku@163.com
version  1.0
Copyright (C), 2001-2020, yeeku.H.Lee
This program is protected by copyright laws.
Program Name:
Date: 
--%>

<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Java EE简单工作流系统</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">

		<c:if test="${not empty tip}">
			<div class="alert alert-danger">${tip}</div>
		</c:if>

		<c:if test="${not empty error}">
			<div class="alert alert-danger">${error}</div>
		</c:if>


		<h3 class="card-title">请输入用户名和密码来登录</h3>
		<form method="post" action="processLogin">
			<div class="form-group row">
				<label for="name" class="col-sm-2 control-label">用户名：</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" id="name" name="name"
						placeholder="请输入用户名" value="${manager.name}">
				</div>
				<div class="col-sm-3 text-danger">
					<form:errors path="manager.name" />
				</div>
			</div>
			<div class="form-group row">
				<label for="pass" class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-7">
					<input type="password" class="form-control" id="pass" name="pass"
						placeholder="请输入密码" value="${manager.pass}">
				</div>
				<div class="col-sm-3 text-danger">
					<form:errors path="manager.pass" />
				</div>
			</div>
			<div class="form-group row">
				<label for="vercode" class="col-sm-2 control-label">验证码：</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="vercode" name="vercode"
						placeholder="验证码">
				</div>
				<div class="col-sm-3">
					<img name="d" src="authImg">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm text-center">
					<button type="submit" class="btn btn-primary">提交</button>
					<button type="reset" class="btn btn-danger">重填</button>
				</div>
			</div>
		</form>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
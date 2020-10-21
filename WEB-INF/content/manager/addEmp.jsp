<%--
网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
author  yeeku.H.lee kongyeeku@163.com
version  1.0
Copyright (C), 2001-2020, yeeku.H.Lee
This program is protected by copyright laws.
Program Name:
Date: 
--%>

<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>增加新员工</title>
</head>
<body>
<%@include file="../header.jsp"%>
<%@include file="mgrheader.jsp"%>
<div class="container">
  <div class="card m-2">
	<div class="card-header">
	  <h3 class="card-title">请您输入新员工的资料</h3>
	</div>
	<div class="card-body">
	  <sf:form  modelAttribute="empForm"  action="processAdd" method="post">

					<s:bind path="name">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label for="name" class="col-sm-2 control-label">员工用户名：</label>
							<div class="col-sm-7">
								<sf:input path="name" class="form-control"
									placeholder="请输入员工用户名" />
								<div class="col-sm-3 text-danger">
									<sf:errors path="name" class="control-label" />
								</div>
							</div>
						</div>
					</s:bind>

					<s:bind path="pass">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label for="pass" class="col-sm-2 control-label">員工密碼：</label>
							<div class="col-sm-7">
								<sf:input path="pass" class="form-control"
									placeholder="请输入密碼" />
								<div class="col-sm-3 text-danger">
									<sf:errors path="pass" class="control-label" />
								</div>
							</div>
						</div>
					</s:bind>
		
					<s:bind path="salary">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<label for="pass" class="col-sm-2 control-label">員工薪資：</label>
							<div class="col-sm-7">
								<sf:input path="salary" class="form-control"
									placeholder="请输入薪資" />
								<div class="col-sm-7 text-danger">
									<sf:errors path="salary" class="control-label" />
								</div>
							</div>
						</div>
					</s:bind>
		
		<div class="form-group row">
		  <div class="col-sm text-center">
			<button type="submit" class="btn btn-primary">添加新员工</button>
			<button type="reset" class="btn btn-danger">重新输入</button>
		  </div>
		</div>
	  </sf:form>
	</div>
  </div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>

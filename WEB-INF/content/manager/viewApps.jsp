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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>处理申请</title>
</head>
<body>
<%@include file="../header.jsp"%>
<%@include file="mgrheader.jsp"%>
<div class="container">
  <div class="card m-2">
	<div class="card-header">
	  <h3 class="card-title">当前用户：${sessionScope.user}</h3>
	</div>
	<div class="card-body">
	  <table class="table table-hover">
		<thead>
		  <tr>
			<th>员工名</th>
			<th>缺勤类型</th>
			<th>申请类型</th>
			<th>理由</th>
			<th>操作</th>
		  </tr>
		</thead>
		<tbody>
		  <c:forEach items="${apps}" var="ap">
			<tr>
			  <td>${ap.emp}</td>
			  <td>${ap.unAttend}</td>
			  <td>${ap.toAttend}</td>
			  <td>${ap.reason}</td>
			  <td>
				<a href='checkApp?result=pass&appId=${ap.id}'>
				  通过</a>&nbsp;&nbsp;
				<a href='checkApp?result=deny&appId=${ap.id}'>
				  拒绝</a>
			  </td>
			</tr>
		  </c:forEach>
		</tbody>
	  </table>
	</div>
  </div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>
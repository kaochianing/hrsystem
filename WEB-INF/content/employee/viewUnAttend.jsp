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
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>查看自己的非正常出勤</title>
</head>
<body>
<%@include file="../header.jsp"%>
<%@include file="empheader.jsp"%>
<div class="container">
  <div class="card m-2">
	<div class="card-header">
	  <h3 class="card-title">
        当前用户：${sessionScope.user}</h3>
        
	</div>
	<div class="card-body">
	
		  <c:if test="${not empty tip}">
		<div class="text-center text-primary">${tip}</div>
	  </c:if>
	  
	  <table class="table table-hover">
		<thead>
		  <tr>
			<th>打卡日期</th>
			<th>异动名称</th>
			<th>打卡时间</th>
			<th>操作</th>
		  </tr>
		</thead>
		
		<tbody>
		  <c:forEach items="${unAttends}" var="im">
			<tr>
			  <td>${im.dutyDay}</td>
			  <td>${im.unType}</td>
			  <td>
				<spring:eval expression="im.time" />
			  </td>
			  <td>
				<a href='appChange-${im.id}'>申请改变</a>
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
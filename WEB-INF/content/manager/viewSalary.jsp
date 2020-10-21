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
  <title>经理查看自己的工资</title>
</head>
<body>
<%@include file="../header.jsp"%>
<%@include file="mgrheader.jsp"%>
<div class="container">
  <div class="card m-2">
	<div class="card-header">
	  <h3 class="card-title">
	    当前用户：${sessionScope.user}</h3>
	</div>
	<div class="card-body">
	
			<div  class="col-sm-12 text-center">
		  <!-- 顯示未有薪資記錄 -->
		  <c:if test="${empty salarys}">
			<h3 class="card-title">您未領過薪水。
			</h3>
		  </c:if>
		</div>
		
	
	
	  <table class="table table-hover">
		<thead>
		  <tr>
			<th>发薪月份</th>
			<th>薪水</th>
		  </tr>
		</thead>
		
		<tbody>
		  <c:forEach items="${salarys}" var="sy">
			<tr>
			  <td>${sy.payMonth}</td>
			  <td>${sy.amount}</td>
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
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
  <title>经理首页</title>
</head>
<body>
<%@include file="../header.jsp"%>
<%@include file="mgrheader.jsp"%>
<div class="container">
  <div class="card m-2">
	<div class="card-header">
	  <h3 class="card-title">提示信息</h3>
	</div>
	<div class="card-body">
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	  <c:if test="${not empty tip}">
		<div class="text-center text-primary">${tip}</div>
	  </c:if>
	  <p class="text-center">${sessionScope.user}，
	    欢迎您使用JavaEE简单工作流系统，您是经理！
	  </p>
	  <p>&nbsp;</p>
	  <p>&nbsp;</p>
	</div>
  </div>
</div>
<%@include file="../footer.jsp"%>
</body>
</html>
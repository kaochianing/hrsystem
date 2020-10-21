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
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>出错提示</title>
</head>
<body>
  <%@include file="header.jsp"%>
  <div class="container">
    <div class="card m-2 text-center">
      <div class="card-header">
      	  <p class="text-center">${sessionScope.user}您好，
	  </p>
        <h4>系统处理过程中发生了一个错误，信息如下：</h4>
      </div>
      <div class="card-body">
        <p>&nbsp;</p>
        <div class="text-danger">${ex.message}</div>
             <div class="text-danger">${url}</div>  
        <p>&nbsp;</p>
      </div>
      <div class="card-footer">
        请您先核对输入，如果再次出现该错误，<br> 请登录
        <a href="${pageContext.request.contextPath}/manager/index">&larr; Back to Dashboard</a>寻求答案，谢谢。
      </div>
    </div>
  </div>
  <%@include file="footer.jsp"%>
</body>
</html>
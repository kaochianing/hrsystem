<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>出错提示</title>
</head>
<body>
  <%@include file="header.jsp"%>
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- 404 Error Text -->
          <div class="text-center">
            <div class="error mx-auto" data-text="404">404</div>
            <p class="lead text-gray-800 mb-5">Page Not Found</p>
            <p class="text-gray-500 mb-0">走錯頁面了，快跑！</p>
            <a href="<c:url value='main'/>">&larr; Back to Dashboard</a>
          </div>
          
          <!-- 404頁面需顯示錯誤訊息時可使用以下指令 -->
          <h1> Error Message: </h1>

             <div class="text-danger">${url}</div>  
             
          <h1>Error Stack:</h1>
        <div class="text-danger">${ex.message}</div>
          

        </div>
        <!-- /.container-fluid -->
        
          <%@include file="footer.jsp"%>
</body>
</html>
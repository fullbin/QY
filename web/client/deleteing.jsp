
<%@ page import="client.ClientImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/26
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");

    if(new ClientImp().delete(name)>0){
        out.print("删除成功.");
    }else {
        out.print("删除失败,查无此人！");
    }
%>
</body>
</html>

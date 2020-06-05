<%@ page import="cal.Calculator" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/2/2020
  Time: 5:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<%@ page errorPage="error.jsp" %>
    <%
        double first= Double.parseDouble(request.getParameter("first-operand"));
        double second= Double.parseDouble(request.getParameter("second-operand"));
        char operator = request.getParameter("operator").charAt(0);
        double result = Calculator.cal(first,operator,second);
    %>
<h1><%=result%>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: atsus
  Date: 15/08/2017
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="person" class="org.ihsusta.java.Person"/>
<jsp:setProperty name="person" property="*"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
name:<jsp:getProperty name="person" property="name"/>
<br>
age:<jsp:getProperty name="person" property="age"/>
<br>
mail:<jsp:getProperty name="person" property="mail"/>
<%--name: <%=name%>--%>
<%=application.getAttribute("count")%>
</body>
</html>

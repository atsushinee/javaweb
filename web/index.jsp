<%--
  Created by IntelliJ IDEA.
  User: atsus
  Date: 15/08/2017
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<style>
    #border {
        border: solid 5px blue;
        border-radius: 20px;
        /*-moz-border-radius: 20px;*/
        padding: 20px;
        width: 300px;
    }
</style>
<head>
    <title>$Title$</title>
</head>
<body>
<div id="border">
    <form name="form" method="post" action="${pageContext.request.contextPath}/new">
        请输入姓名：<label for="realName"></label><input name="name" id="realName" size="40">
        <input name="Button" type="button" onclick="checkRealName()" value="检测">
        <br>
        <input name="Button" type="button" onclick="openNew()" value="打开">
        <input name="Button" type="button" onclick="closeNew()" value="关闭">
        <br>
        age：<label for="id"></label><input name="age" id="id" size="40">
        <br>
        mail：<label for="name"></label><input name="mail" id="name" size="40">
        <input name="Button" type="submit" value="打开新页面">
    </form>
    <%=application.getAttribute("count")%>
</div>
</body>
<script>
    function checkRealName() {
        let str = form.realName.value;
        if (str === "") {
            alert("请输入真实姓名！");
            realName.focus();
        } else {
            let objExp = /[\u4E00-\u9FA5]{2,}/;
            if (objExp.test(str)) {
                alert("输入正确");
            } else {
                alert("输入不正确");
            }
        }
    }


    function openNew() {
        window.open("comment.jsp", "asda");
    }

    function closeNew() {
        window.close();
    }
</script>

</html>

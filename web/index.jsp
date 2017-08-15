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
        width: 180px;
    }
</style>
<head>
    <title>$Title$</title>
</head>
<body>
<div id="border">
    <form name="form" method="post" action="">
        请输入姓名：<label for="realName"></label><input name="realName" id="realName" size="40">
        <input name="Button" type="button" onclick="checkRealName()" value="检测">
        <br>
        <input name="Button" type="button" onclick="openNew()" value="打开">
        <input name="Button" type="button" onclick="closeNew()" value="关闭">
    </form>
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

    let windowopen;

    function openNew() {
        windowopen = window.open("index.jsp", "asda");
    }

    function closeNew() {
        window.close();
    }
</script>

</html>

<%--
  Created by IntelliJ IDEA.
  User: atsus
  Date: 15/08/2017
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    table {
        width: 600px;
        border: 1px;
        text-align: center;
        mso-cellspacing: 0;
        padding: 0;
        border-color: #FFFFFF;
        table-border-color-light: #666666;
        table-border-color-dark: #FFFFFF;
    }
</style>
<head>
    <title>评论区</title>
</head>
<body>
<table id="comment">
    <tr>
        <td width="18%" height="27" align="center" bgcolor="#E5BB93">评论人</td>
        <td width="82%" align="center" bgcolor="#E5BB93">评论内容</td>
    </tr>
</table>
<form name="form1" method="post" action="">
    <label>评&nbsp;&nbsp;论&nbsp;&nbsp;人：<input name="person" id="person" size="40"></label>
    <br>
    <label>评论内容：<textarea name="content" cols="60" rows="6" id="content"></textarea></label>
    <br>
    <label><input name="button" type="button" value="发表" onclick="addElement()"></label>
    <label><input name="reset" type="reset" value="重置"></label>
    <label><input name="button" type="button" value="删除第一条" onclick="deleteFirst()"></label>
    <label><input name="button" type="button" value="删除最后一条" onclick="deleteLast()"></label>
</form>
</body>
<script>
    function addElement() {
        let person = document.createTextNode(form1.person.value);
        let content = document.createTextNode(form1.content.value);
        //创建td类型的Element节点
        let td_person = document.createElement("td");
        let td_content = document.createElement("td");
        let tr = document.createElement("tr");
        let tbody = document.createElement("tbody");
        //将TextNode节点加入到td类型的节点中
        td_person.appendChild(person);
        td_content.appendChild(content);
        //将td类型的节点添加到tr节点中
        tr.appendChild(td_person);
        tr.appendChild(td_content);
        tbody.appendChild(tr);
        let tComment = document.getElementById("comment");
        tComment.appendChild(tbody);
        form1.person.value = "";
        form1.content.value = "";
        form1.person.focus();
    }

    function deleteFirst() {
        let tComment = document.getElementById("comment");
        if (tComment.rows.length > 1) {
            tComment.deleteRow(1);
        }
    }

    function deleteLast() {
        let tComment = document.getElementById("comment");
        if (tComment.rows.length > 1) {
            tComment.deleteRow(tComment.rows.length - 1);
        }
    }
</script>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息显示页面</title>

    <style>
        body {
            /*让背景图片拉伸且占据整个屏幕*/
            background-image: url("image/background.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        td, th {
            /* white-space: nowrap; 文本不换行显示 */
            white-space: nowrap;
            width: 70px;
            height: 35px;
            /*text-align: center;文本居中显示*/
            text-align: center;
            padding: 4px 8px;
        }
        input{
            padding: 4px 8px
        }

    </style>
</head>
<body>

<div class="div_middle1">
    <%-- style="text-align: center; 使form表单居中显示 --%>
    <form action="/stuManage" class="text_center" style="margin-top: 10px">
        <input id="name" name="name" placeholder="按姓名查询">
        <input type="submit" value="查询">
        <input type="button" value="增加学生信息" onclick="window.location.href='/zyh/stuAddForm.jsp'">
    </form>
    <table border="2" cellspacing="0" align="center">
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>专业</th>
            <th>班级</th>
            <th>民族</th>
            <%--  colspan属性用于将指定的横向单元格合并  --%>
            <th colspan="2">操作</th>
        </tr>
        <c:forEach items="${sessionScope.stuLst}" var="stu">

        <tr id="${stu.id}">
<%--            --%>
                <td>${stu.id}</td>
                <td>${stu.name}</td>

                <td>${stu.age}</td>
                <td>${stu.sex}</td>
                <td>${stu.major}</td>
                <td>${stu.sclass}</td>
                <td>${stu.snative}</td>
                <td>
                    <a href="zyh/stuModForm.jsp?id=${stu.id}&name=${stu.name}&age=${stu.age}&sex=${stu.sex}&major=${stu.major}&sclass=${stu.sclass}&snative=${stu.snative}"
                       style="text-decoration: none;color: blue">修改</a>
                </td>
                <td>
                    <a href="/zyh/stuManage?id=${stu.id}&op=delete" style="text-decoration: none;color:orangered">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

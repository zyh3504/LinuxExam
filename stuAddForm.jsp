<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息页面</title>
    <style>
        body {
            background-image: url("image/background.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }
        .divcenter {
            width: 850px;
            height: 400px;
            margin: auto;
        }
    </style>
</head>
<body>
<div class="divcenter">
    <div style="height: 10px"></div>
    <form action="/stuManage" style="text-align: center;">
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <font style="color: red">* 代表必填项</font>
                </td>
            </tr>
            <tr>
                <td>学号：</td>
                <td>
                    <input id="id" name="id" placeholder="请输入学号" required >
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input id="name" name="name" placeholder="请输入姓名" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input id="age" name="age" placeholder="请输入年龄" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input id="sex" name="sex" placeholder="请输入性别" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>专业：</td>
                <td><input id="major" name="major" placeholder="请输入学生所在专业" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>班级：</td>
                <td><input id="sclass" name="sclass" placeholder="请输入学生所在班级" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
            <tr>
                <td>民族：</td>
                <td><input id="snative" name="snative" placeholder="请输入学生所属民族" required>
                    <font style="color: red">*</font>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" value="增加">
                </td>
                <td>
                    <input name="op" value="insert" hidden>
                </td>
                <td>
                    <input type="reset" value="重置">
                </td>
                <td>
                    <input type="button" value="返回" onclick="window.location.href='/zyh/stuManage'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

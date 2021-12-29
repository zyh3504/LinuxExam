<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息修改页面</title>
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
    <form action="/stuManage" style="text-align: center">
        <table align="center">
            <tr>
                <td colspan="2" style="text-align: center">
                    <font color="red">*代表必填项</font>
                </td>
            </tr>
            <tr>
                <td>学号：</td>
                <td><input id="id" name="id" value="<%=request.getParameter("id")%>" required readonly onclick="alert('学号不可修改')"></td>
            </tr>
            <tr>
                <td>姓名：</td>
                <td><input id="name" name="name" value="<%=request.getParameter("name")%>" required><font
                        color="red">*</font></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input id="age" name="age" value="<%=request.getParameter("age")%>"></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td><input id="sex" name="sex" value="<%=request.getParameter("sex")%>"></td>
            </tr>

            <tr>
                <td>专业：</td>
                <td><input id="major" name="major" value="<%=request.getParameter("major")%>"></td>
            </tr>
            <tr>
                <td>班级：</td>
                <td><input id="sclass" name="sclass" value="<%=request.getParameter("sclass")%>"></td>
            </tr>
            <tr>
                <td>民族：</td>
                <td><input id="snative" name="snative" value="<%=request.getParameter("snative")%>"></td>
            </tr>
        </table>
        <table align="center">
            <tr style="text-align: center">
                <td>
                    <input type="submit" value="确认修改">
                </td>
                <td>
                    <input name="op" value="update" hidden>
                </td>
                <td>
                    <input type="button" value="返回" onclick="window.location.href='/zyh/student.jsp'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

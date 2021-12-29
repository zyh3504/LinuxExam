<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>学生信息管理系统</title>
    <style>
        body {
            /*让背景图片拉伸且占据整个屏幕*/
            background-image: url("image/background.png");
            background-size: 100%;
            background-repeat: no-repeat;
        }

        .myButton {
            box-shadow:inset 0px 39px 0px -24px #e67a73;
            background-color:#e4685d;
            border-radius:4px;
            border:1px solid #ffffff;
            display:inline-block;
            cursor:pointer;
            color:#ffffff;
            font-family:Arial;
            font-size:15px;
            padding:13px 76px;
            text-decoration:none;
            text-shadow:0px 1px 0px #b23e35;
        }
        .myButton:hover {
            background-color:#eb675e;
        }
        .myButton:active {
            position:relative;
            top:1px;
        }








    </style>
</head>
<body>

  <h1>学生信息管理系统</h1>
  <br>
  <button class="myButton" onclick="window.location.href='stuManage'">跳转到学生信息显示页面</button>

</body>
</html>

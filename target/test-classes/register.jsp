<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/12
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>注册</title>
    <style type="text/css">
        *{
            margin:0;
            padding:0;
        }
        .maxbox{
            margin-top:2%;
            margin-left:13%;
            width:65%;
            align:center;
        }
        .centerbox{
            background-color: #43dbcf;
            background-size:100%;
            background-image:url("/images/timg.jpg");
            background-repeat: no-repeat;
            padding:8% 10% 10% 60%;
            width:40%;
        }
            .mainbox{
                line-height:15px;
                padding:10% 10% 10% 20%;
                border:1px solid #1f36db;
                width:55%;
                height:55%;

            }
        hr{
            width:75%;
            color:powderblue;
            type:dashed;
        }

    </style>
</head>
<body>
<div class="maxbox">
    <%--<div class="left" style="background-color: #43dbcf;width:33%;float:left">--%>

    <%--</div>--%>
        <div class="centerbox" >

            <div class="mainbox">
                <c:if test="${ not empty msg}">
                    <h1>${msg}</h1>
                </c:if>
                <div style="width:70%;height:20%;text-align: center">
                    <h3 style="font-family: 华文行楷">欢迎注册</h3>
                    <img style="width:46px;height:28px" src="../images/logo.png">
                </div>
                <form method="post" >
                    <input style="border:none;outline:medium" type="text" placeholder="手机号" autofocus name="phoneNumber">
                    <hr>
                    <br><br>
                    <input style="border:none;outline:medium" type="text" placeholder="昵称" autofocus name="nickname">
                    <hr>
                    <c:if test="${ not empty username_msg}">
                        <h1>${username_msg}</h1>
                    </c:if>
                    <br><br>
                    <div>
                        <input style="border:none;outline:medium" type="password" placeholder="密码" name="password">

                        <img style="width:18px;height:18px" src="../images/passworddisplay.png">
                    </div>
                    <hr>
                    <br><br>
                    <input style="border:none;outline:medium" type="password" placeholder="确认密码" name="confirmPassword">
                    <img style="width:18px;height:18px" src="../images/passworddisplay.png">

                    <hr>
                    <c:if test="${ not empty password_msg}">
                        <h1>${password_msg}</h1>
                    </c:if>
                    <br>
                    <div>
                            <input style="height:7%;width:45%;outline:medium" type="text" placeholder="验证码" name="inputCode">
                        <img src="/code">
                    </div>
                    <br><br>
                    <div style="font-family:楷体;height:5%">
                        <input type="checkbox" name="rememberMe" value="play">记住我
                    </div>
                    <br>
                    <div style="height:20%;width:70%;">
                        <input style="float:right;" type="submit" value="立即注册">
                    </div>
                </form>
            </div>
        </div>
</div>
</body>
</html>

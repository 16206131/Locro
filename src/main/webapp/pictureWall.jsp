<%--
  Created by IntelliJ IDEA.
  User: ShiZhiGang
  Date: 2018/10/24
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>照片墙</title>
    <style type="text/css">
        body{
            background: rgba(17, 17, 17, 0.1);
        }
        h1{
            text-align: center;
            text-shadow: 2px 2px 10px  #6ce893;
        }
        .container{
            width: 960px;
            height: 450px;
            margin: 60px auto;
            position: relative;

        }
        img{
            width:200px;
            height:200px;
            padding:10px 10px 15px;background: rgba(104, 147, 160, 0.55);border: 3px solid #dddddd;position: absolute;top:50px;
            left:200px;transform: rotate(30deg);transition: 1s}
        img:hover{transform: rotate(0deg);transform: scale(0.5);box-shadow: 10px 10px 15px #80dd44
        }
        .p1{
            left: 100px;
            top:30px;
        }
        .p2{
            left: 350px;
            top:30px;
            transform: rotate(-50deg);
        }
        .p3{
            left: 580px;
            top:30px;
            transform: rotate(50deg);
        }
        .p4{
            left: 860px;
            top:30px;
            transform: rotate(-50deg);
        }
        .p5{
            left: 100px;
            top:200px;
            transform: rotate(50deg);
        }
        .p6{
            left: 350px;
            top:210px;
            transform: rotate(60deg);
        }
        .p7{
            left: 700px;
            top:210px;
            transform: rotate(-50deg);
        }
    </style>
</head>
<body>
<h1>照片墙</h1>
<div class="container">
    <img class="p1" src="/pic/photo1.jpg">
    <img class="p2" src="/pic/photo2.jpg">
    <img class="p3" src="/pic/photo3.jpg">
    <img class="p6" src="/pic/photo4.jpg">
    <img class="p7" src="/pic/photo5.jpg">
    <%--<img class="p6" src="/postImages/food6.jpg">--%>
    <%--<img class="p7" src="/postImages/food7.jpg">--%>

</div>

</body>
</html>
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
    <title>text</title>
    <style type="text/css">
        @import "/styles/login.css";
    </style>
</head>

<body>
<div class="main">
    <div class="content">
        <div class="title_box">
            <h1>关于<img style="height: 35px;  line-height: 35px" src="/images/Locro1.png">美食网</h1>
        </div>

        <span style="font-size: 20px; color: #ff4910;font-family: STLiti">
            在Locro你可以认识食材、学习菜谱。
            从小白到大咖，然后脑洞大开技惊全场；或者挑战烘焙，甜蜜满屋。

            人人都是美食家，欢迎你参与进来——
            这里的菜谱都是由你我他创建，欢迎分享出你的拿手菜！
            也可以发表话题，跟大家一起交流厨艺、分享家人的早餐、吃到的美食，以及关于生活的各种美好。
            你也可以将喜爱的菜谱，创建各种菜单，这是属于大家的知识专辑。
            每一次参与，都是帮助他人。 <span>
    </div>
</div>

</body>
<script type="text/javascript">

    // 这里使用最原始的js语法实现，可对应换成jquery语法进行逻辑控制
    var demoImg = document.getElementById("demo_img");
    var demoInput = document.getElementById("demo_input");
    //隐藏text block，显示password block
    function hideShowPsw() {
        if (demoInput.type == "password") {
            demoInput.type = "text";
            demo_img.src = "/images/passwordundisplay.png";
        } else {
            demoInput.type = "password";
            demo_img.src = "/images/passworddisplay.png";
        }
    }

</script>
</html>

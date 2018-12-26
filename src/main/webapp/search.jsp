<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>搜索</title>
    <style type="text/css">
        @import "/styles/index_home.css";
    </style>
</head>
<body>

<!--顶部-->
<div class="top_shadow">
    <div class="body_width">
        <span style="float:left;"><img src="images/Locro1.png" style="height: 40px;line-height: 40px; border-radius : 0px; box-shadow: 0 0 0;"></span>
        <span class="cell-2">&emsp;</span>
        <span class="cell-1"><a class="top_font" href="index.jsp" >首页</a></span>
        <span class="cell-1"><a class="top_font" href="search2.jsp" >搜索</a></span>
        <span class="cell-1"><a class="top_font" href="/userInfo.jsp" >用户信息</a></span>
        <span>
            <c:if test="${empty userNickname}">
                <a class="top_font" href="/register.jsp" >注册</a>
                <a class="top_font">&nbsp;|&nbsp;</a>
                <a class="top_font" href="/login.jsp">登录</a>
            </c:if>

            <c:if test="${not empty userNickname}">
               <div class="top_font" >欢迎您&nbsp;:&nbsp;${userNickname}&emsp;|&emsp;
                  <a href="/index.jsp"><div class="top_font" >注销</div></a>
               </div>
            </c:if>
        </span>
    </div>
</div>

<!--主体-->
<div class="body_width">

        <div class="body_empty"></div>
    <form action="/post/search" method="post">
        <div class="search_box">
            <input type="text" value="${userNickname}" hidden name="userNickname">
           <input type="search" placeholder="输入搜索内容" name="search" class="search-input" >
            <input type="submit" value="搜索">
            <input id="q" aria-hidden="true" autocomplete="off" name="q" tabindex="-1" type="url" jsaction="mousedown:ntp.fkbxclk" style="opacity: 0;">



        </div>
    </form>

        <div class="search_button_box">
            <span>
                <input type="button" style="position:absolute; top: 300px; left: 540px;"  class="search-button" value="川菜">
                <input type="button" style="position:absolute; top: 180px; left: 120px" class="search-button" value="甜点">
                <input type="button" style="position:absolute; top: 80px; left: 520px" class="search-button" value="汤"><br><br>
                <input type="button" style="position:absolute; top: 300px; left: 200px" class="search-button" value="蛋糕面包">
                <input type="button" style="position:absolute; top: 180px; left: 370px" class="search-button" value="日本料理">
                <input type="button" style="position:absolute; top: 180px; left: 620px" class="search-button" value="早餐"><br><br>
                <input type="button" style="position:absolute; top: 80px; left: 220px" class="search-button" value="红煮大杂蟹">
            </span>
        </div>

</div>
</body>
</html>

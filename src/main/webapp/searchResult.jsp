<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>搜索结果</title>
    <style type="text/css">
        @import "/styles/index_home.css";
    </style>

    <script type="text/javascript">
        var imgs=["food1.jpg","food2.jpg","food3.jpg","food4.jpg"];
        var x=0;
        function f() {
            x++;
            x=x%4;
            document.getElementById("img").src="/images/"+imgs[x];
        }
        setInterval("f()",2500);
        function myFunction() {
            alert("请登录后再进行相关操作！");
        }
    </script>

</head>
<body>

<!--顶部-->
<div class="top_shadow">
    <div class="body_width">
        <span style="float:left;"><img src="/images/Locro1.png" style="height: 40px;line-height: 40px; border-radius : 0px; box-shadow: 0 0 0;"></span>
        <span class="cell-2">&emsp;</span>
        <span class="cell-1"><a class="top_font" href="/index.jsp" >首页</a></span>
        <span class="cell-1"><a class="top_font" href="/search.jsp" >搜索</a></span>
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
    <!--留白-->
    <div class="body_empty3"></div>
    <div class="body_empty1" style="color: #ff4910; text-align:center; font-family: STXingkai;font-size:35px;">搜索结果</div>

    <div class="body_left">

        <c:forEach var="i" begin="0" end="${count}" step="1">
            <c:if test="${not empty posts[i]}">
                <div class="body_left_box">
                    <div class="body_left_box_picture">
                        <a href="/post/detail?postImage=/postImages${posts[i].image}&postNickname=${usersSearch[i].nickname}&postContent=${posts[i].content}&postTitle=${posts[i].title}">
                            <img  src="/postImages${posts[i].image}" height=240px width=320px>
                        </a>
                    </div>
                    <div class="body_left_box_title">
                        <a href="/post/detail?postImage=/postImages${posts[i].image}&postNickname=${usersSearch[i].nickname}&postContent=${posts[i].content}&postTitle=${posts[i].title}">${posts[i].title} </a>
                    </div>
                    <div class="body_left_box_detail">${posts[i].content}</div>
                    <div class=".body_left_box_info">
                        <span class="body_left_box_username">${usersSearch[i].nickname}</span>
                        <span class="body_left_box_date">${posts[i].postDate}</span>
                    </div>
                </div>
            </c:if>
            <!--留白-->
            <div class="body_empty4">&emsp;</div>
        </c:forEach>

        <%--<div class="body_empty3" style="width: 60%; margin: 0 auto">--%>
            <%--<form method="post" action="/post/index">--%>
                <%--<input type="text" hidden value="${}">--%>
                <%--<input type="submit"  class="up-button" value="上一页" style="float:left;">--%>
            <%--</form>--%>

            <%--<form method="post" action="/post/index">--%>
                <%--<input type="submit" class="up-button" value="下一页" style="float:right;">--%>
            <%--</form>--%>
        <%--</div>--%>

        <!--留白-->
        <div class="body_empty4">&emsp;</div>
        <div class="copyright">
            <div class="copyright-text">Copyright ©2018-future Locro美食论坛 版权所有 保留一切权利 | 小组成员：韩聪 康登光 饶小强 周良 石志刚 </div>
        </div>
    </div>

    <div class="body_right">
        <c:if test="${empty user}">
            <input class="body_right_share" style="border: none" type="button" onclick="myFunction()" value="分享美食">
            <div class="body_empty4">&emsp;</div>

            <input class="body_right_share" style="border: none" type="button" onclick="myFunction()" value="发布菜谱">
            <div class="body_empty2">&emsp;</div>
        </c:if>

        <c:if test="${not empty user}">
            <a href="/sendpost.jsp" ><div class="body_right_share">分享美食</div></a>
            <div class="body_empty4">&emsp;</div>

            <a href="/sendpost2.jsp" ><div class="body_right_share">发布菜谱</div></a>
            <div class="body_empty2">&emsp;</div>
        </c:if>

        <div class="body_right_picture_box">
            <div style="height: 18%; width: 100%; font-size: 28px;padding: 2.5% 5% 2.5% 5%; color: #ff7043;">居食文化&emsp;品味人生</div>
            <img id="img" src='/images/food1.jpg' class="body_right_picture" >
        </div>
    </div>
</div>
</body>
</html>

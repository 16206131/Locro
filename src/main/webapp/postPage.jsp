<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <span class="cell-1"><a class="top_font" href="" >XXX</a></span>
        <span>
            <c:if test="${empty user}">
                <a class="top_font" href="/register.jsp" >注册</a>
                <a class="top_font">&nbsp;|&nbsp;</a>
                <a class="top_font" href="/login.jsp">登录</a>
            </c:if>

            <c:if test="${not empty user}">
               <div class="top_font" >欢迎您&nbsp;:&nbsp;${user.nickname}&emsp;|&emsp;
                  <a href="/index.jsp"><div class="top_font" >注销</div></a>
               </div>
            </c:if>
        </span>
    </div>
</div>


<!--主体-->
<div class="body_width">

    <!--留白-->
    <div class="body_empty2">&emsp;</div>
    <div class="body_left">

        <div class="body_left_box" style="margin-bottom: 10px">
            <div class="body_left_box_picture"><img src="${postImage}" height=240px width=320px></div>
            <div class="body_left_box_title">${postTitle}</div>
            <div class="body_left_box_detail">&nbsp;</div>
            <div class=".body_left_box_info">
                <span class="body_left_box_username">${postNickname}</span>
                <span class="body_left_box_date">${postDate}</span>
            </div>
        </div>

        <!--正文-->
        <div class="postpage_box" style="height: 500px; margin-bottom: 10px">${postContent}
        </div>

        <!--回复-->
        <div class="postpage_box" style="height: 120px; margin-bottom: 10px" >
            <textarea name="text" style="height: 100%; width: 100%; resize:none; border: none" placeholder="回复内容：" id="2"></textarea>
        </div>

        <!--提交回复-->
        <div class="body_empty2"  style="margin-bottom: 10px" >
            <input class="reply-button" type="button" value="回复" style="float:right;">
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

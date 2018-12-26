<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>用户信息</title>
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

<div class="body_width">
    <!--留白-->
    <div class="body_empty2">&emsp;</div>

    <div class="user_body_left">
        <div class="user_info">
            <div style="float: left;width: 100px; height: 100px"><img src="/images/userPhoto.jpg" class="userphoto"></div>
            <div style="float: left;margin:0 10px 0 20px; width: 100px; height: 100px;line-height:100px; font-size: 20px">${userNickname}</div>
        </div>
        <!--if(profile不为空) 显示${user.profile}-->
        <div class="user_info_profile">
            <div style="margin: 10px; padding: 10px">这个用户很懒，什么也没留下....</div>
        </div>
    </div>



    <div class="user_body_right">
        <div class="body_empty1" style="color: #ff7043; text-align:center; font-size:25px;">他发布的帖子</div>
        <div class="body_left_box">
            <div class="body_left_box_picture">
                <a href="/post/detail?post=${posts[0]}?user=${users[0]}">
                    <img  src="/postImages${posts[0].image}" height=240px width=320px>
                </a>
            </div>
            <div class="body_left_box_title">
                <a href="/post/detail?post=${posts[0]}?user=${users[0]}">${posts[0].title} </a>
            </div>
            <div class="body_left_box_detail">${posts[0].content}</div>
            <div class=".body_left_box_info">
                <span class="body_left_box_username">${users[0].nickname}</span>
                <span class="body_left_box_date">${posts[0].postDate}</span>
            </div>
        </div>
        <!--留白-->
        <div class="body_empty4">&emsp;</div>


        <!--留白-->
        <div class="body_empty4">&emsp;</div>
        <div class="body_empty1" style="color: #ff7043; text-align:center; font-size:25px;"></div>
        <div class="body_left_box">
            <div class="body_left_box_picture">
                <a href="/post/detail?post=${posts[1]}?user=${users[1]}">
                    <img  src="/postImages${posts[1].image}" height=240px width=320px>
                </a>
            </div>
            <div class="body_left_box_title">
                <a href="/post/detail?post=${posts[1]}?user=${users[1]}">${posts[1].title} </a>
            </div>
            <div class="body_left_box_detail">${posts[1].content}</div>
            <div class=".body_left_box_info">
                <span class="body_left_box_username">${users[1].nickname}</span>
                <span class="body_left_box_date">${posts[1].postDate}</span>
            </div>
        </div>
        <!--留白-->
        <div class="body_empty4">&emsp;</div>
    </div>
</div>
</body>
</html>

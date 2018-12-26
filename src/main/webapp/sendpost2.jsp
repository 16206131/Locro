<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style type="text/css">
        @import "styles/index_home.css";
    </style>
    <script>
        var image = '';
        function selectImage(file) {
            if (!file.files || !file.files[0]) {
                return;
            }
            var reader = new FileReader();
            reader.onload = function (evt) {
                document.getElementById('image').src = evt.target.result;
                image = evt.target.result;
            }
            reader.readAsDataURL(file.files[0]);
        }
    </script>

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


<!--主体-->
<div class="body_width">
    <!--留白-->
    <div class="body_empty3"></div>

    <div class="body_empty1" style="color: #ff4910; text-align:center; font-family: STXingkai;font-size:35px;">发布菜谱</div>

    <div class="body_left">
        <form method="post" action="/post/publishPost" enctype="multipart/form-data">
            <div class="postpage_box" style="height: 40px; margin-bottom: 10px; border: none" >
                <div style="padding: 3px 5px 5px 3px">
                    <input type="text" placeholder="请输入帖子标题" name="title" style="width:100%; height:100%; text-align: center; font-size: 18px; color: #2d2d2d; border: none">
                </div>
            </div>

            <div class="body_left_box" style="height:100px; margin-bottom: 10px">
                <div style="padding: 10px 10px 10px 10px">
                    <div class="classify">家常菜:
                        <select class="classify_select" name="hometown" size="1">
                            <option >凉菜</option>
                            <option >素食</option>
                            <option >早餐</option>
                            <option >午餐</option>
                            <option >晚餐</option>
                            <option >宝宝食谱-婴儿食谱</option>
                            <option >糕点主食</option>
                            <option >海鲜</option>
                            <option selected></option>
                        </select>
                    </div>

                    <div class="classify">中华菜系:
                        <select class="classify_select"  name="chineseDish" size="1">
                            <option >川菜</option>
                            <option >粤菜</option>
                            <option >东北菜&emsp;&emsp;&emsp;&emsp;&emsp;</option>
                            <option >湘菜</option>
                            <option >鲁菜</option>
                            <option >浙菜</option>
                            <option >湖北菜</option>
                            <option >清真菜</option>
                            <option selected></option>
                        </select>
                    </div>

                    <div class="classify">外国菜谱:
                        <select  class="classify_select"  name="foreignDish" size="1">
                            <option >韩国料理&emsp;&emsp;&emsp;</option>
                            <option >日本料理</option>
                            <option >法国菜</option>
                            <option >意大利餐</option>
                            <option selected></option>
                        </select>
                    </div>

                    <div class="classify">各地小吃:
                        <select  class="classify_select"  name="snacks" size="1">
                            <option >四川小吃&emsp;&emsp;&emsp;</option>
                            <option >广东小吃</option>
                            <option >北京小吃</option>
                            <option >陕西小吃</option>
                            <option selected></option>
                        </select>
                    </div>

                    <div class="classify">烘焙:
                        <select  class="classify_select"  name="back" size="1">
                            <option >蛋糕面包&emsp;&emsp;&emsp;</option>
                            <option >饼干配方</option>
                            <option >甜品点心</option>
                            <option selected></option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="postpage_box" style="height: 200px; margin-bottom: 10px; border: none" >
                <div class="navPadding_1">
                    <textarea name="textElements" class="post_input" placeholder="请输入制作菜品所需的食材: " id="2" ></textarea>
                </div>
            </div>

            <div class="postpage_box" style="height: 500px; margin-bottom: 10px; border: none" >
                <div class="navPadding_1">
                    <textarea name="textContent" class="post_input" placeholder="请输入内容: " id="1" ></textarea>
                </div>
            </div>

            <div class="postpage_box" style="height: 300px; margin-bottom: 10px; border: none" >
                <div class="navPadding_1">
                    <input type="file" name="file">
                </div>
            </div>

            <div class="body_empty2"  style="margin-bottom: 10px" >
                <input type="text" hidden value="${uid}" name="uid">
                <input class="reply-button" type="submit" value="发布" style="float:right;">
            </div>
        </form>
    </div>

    <div class="body_right">
        <c:if test="${not empty userNickname}">
            <a href="/sendpost.jsp?userNickname=${userNickname}" ><div class="body_right_share">分享美食</div></a>
            <div class="body_empty4">&emsp;</div>

            <a href="/sendpost2.jsp?userNickname=${userNickname}" ><div class="body_right_share">发布菜谱</div></a>
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

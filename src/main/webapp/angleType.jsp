<%--
  Created by IntelliJ IDEA.
  User: ShiZhiGang
  Date: 2018/10/29
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>判断三角形</title>
</head>
<body>
<span>请输入三角形的三条边：a,b,c</span>
<br>
    a:<input style="margin-left: 7%;" maxlength="3" id="a" placeholder="1-200">
    <br> <br>
    b:<input style="margin-left: 7%;" maxlength="3" id="b" placeholder="1-200">
    <br> <br>
    c:<input style="margin-left: 7%;" maxlength="3" id="c" placeholder="1-200">
    <br> <br>
    三角形类型：<input style="margin-left:4px;" id="angleType">
    <br><br>

<input id="adjude" type="submit" value="判断三角形类型" onclick="angleType()">

<script>
    function  angleType()
    {
        var a = document.getElementById("a");
        var b = document.getElementById("b");
        var c = document.getElementById("c");
        var angleType = document.getElementById("angleType");
        var av = a.value;
        var bv = b.value;
        var cv = c.value;
        if (!isNaN(av)) {
            if (!isNaN(bv)) {
                if (!isNaN(cv)) {
                    var avv = Number(av);
                    var bvv = Number(bv);
                    var cvv = Number(cv);
                    if (avv + bvv > cvv && avv + cvv > bvv && bvv + cvv > avv) {
                        if (avv == bvv && avv == cvv) {
                            angleType.value = "等边三角形";
                            return;
                        }
                        else if (avv == bvv && avv != cvv || avv == cvv && avv != bvv) {
                            angleType.value = "等腰三角形";
                            return;
                        }
                        else {
                            angleType.value = "一般三角形";
                            return;
                        }
                    }
                    else {
                        angleType.value = "非三角形"
                        return;
                    }
                }
                alert("c值无效，请重新输入！");
                c.focus="true";

              return;
            }
            alert("b值无效，请重新输入！");
           b.onfocus="true";
            return;
        }
        alert("a值无效，请重新输入！");
        a.onfocus="true";
        return;
    }
</script>
</body>
</html>

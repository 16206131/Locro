<%--
  Created by IntelliJ IDEA.
  User: ShiZhiGang
  Date: 2018/10/24
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>javaScript代码</title>
</head>
<body>
学生成绩录入：
<hr>
<form id="frmMain">

    语文：<input type="text" id="txtChinese" value="85" size="4"><p>
    数学：<input type="text" id="txtMath" value="73" size="4"><p>
    英语：<input type="text" id="txtEnglish" value="82" size="4">

    <hr>
    学生平均分：<input type="text" id="txtAverage" size="4">
    <input type="button" value="计算" onclick="com()">
    <hr>
</form>
<script>
    function com()
    {

        var Chinese = document.getElementById("txtChinese").value;
        var Math = document.getElementById("txtMath").value;
        var English = document.getElementById("txtEnglish").value;


        if (!isNaN(Chinese))
        {
            if (!isNaN(Math)) {
                if (!isNaN(English)) {
                    Chinese=Number(Chinese);
                    Math=Number(Math);
                    English=Number(English);
                    var avg=(Chinese+Math+English)/3.0;
                    document.getElementById("txtAverage").value=avg.toFixed(2);

                    return;
                }
                alert("请填入数字！");
                document.getElementById("txtEnglish").focus();
                return;
            }
            alert("请填入数字！");
            document.getElementById("txtMath").focus();
            return;
        }
        alert("请填入数字！");
        document.getElementById("txtChinese").focus();
        return;
    }
</script>
</body>

</html>

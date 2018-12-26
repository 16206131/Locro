<%--
  Created by IntelliJ IDEA.
  User: ShiZhiGang
  Date: 2018/11/26
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>下一天</title>
</head>
<body>
    <div>
       <input id="year" type="text" onkeyUp="this.value=this.value.replace(/[^0-9]/g,'')">年
        <input id="month" type="text" onkeyUp="this.value=this.value.replace(/[^0-9]/g,'')">月
        <input id="day" type="text" onkeyUp="this.value=this.value.replace(/[^0-9]/g,'')">日
        <br>
        下一天<input id="nextDay" type="text" onkeyUp="this.value=this.value.replace(/[^0-9\.]/g,'')">
        <br><br><br>
        <input type="submit"  value="提交" onclick="nextDay()">
    </div>
</body>
<script>
    function nextDay() {
        var yearInput=document.getElementById('year');
        var monthInput=document.getElementById('month');
        var dayInput=document.getElementById('day');
        var year=Number(yearInput.value);
        var month=Number(monthInput.value);
        var day=Number(dayInput.value);
        var nextDay=document.getElementById('nextDay');
        if(year<1818||year>2018)
        {
            alert('请输入1818-2018之间的年份');
        }
        else
        {
            if(month<1||month>12)
            {
                alert("请输入1-12之间的月份！");
            }
            else
            {
                if(day<1)
                {
                    alert("请输入大于0的日！");
                }
                else
                {
                    switch (month)
                    {
                        case 1,3,5,7,8,10,12:
                            if(day<31)
                            {
                                day++;
                                nextDay.value=yearInput+"-"+monthInput+"-"+day.toString();
                                return;
                            }
                            else if (day==31) {
                                if(month!=12)
                                {
                                    day=1;
                                    month++;
                                    nextDay.value=yearInput+'-'+month.toString()+'-'+"01";
                                }
                                else
                                {
                                    year++;
                                    nextDay.value=year.toString()+"-"+"01"+"-"+"01";
                                }

                                return;
                            }
                            else
                            {
                                alert("请输入1-31之间的日");
                            }
                            break;

                        case 2:


                    }
                }

            }

        }
    }
</script>
</html>

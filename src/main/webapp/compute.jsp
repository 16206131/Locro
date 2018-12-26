<%--
  Created by IntelliJ IDEA.
  User: ShiZhiGang
  Date: 2018/10/24
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科学计算器</title>
    <style type="text/css">
        .button1
        {
            width: 70px;
            height: 40px;
            margin: 0px;

        }
        .button2
        {
            width: 100px;
            height: 70px;

        }

    </style>
</head>
<body style="margin: 0px">
<div >
    &Xi;<b>科学</b>
    <br><br>
    <form>
        <input type="text" style="border: none;width: 73%;height: 40px;background-color:darkgrey" dir="rtl"  >
        <br> <br> <br> <br>


                <button class="button1" style="" value="GRAND">GRAND</button>
                <button class="button1" style="" value="HYP">HYP</button>
                <button class="button1" style="" value="GRAND">F-E</button>

            <br>

                <button  class="button1" style="" value="GRAND">MC</button>
                <button  class="button1" style="" value="HYP">MR</button>
                <button  class="button1"  value="GRAND">M+</button>
                <button  class="button1"  value="HYP">M-</button>
                <button  class="button1"  value="GRAND">MS</button>

        <table cellspacing="0px">
            <tr>
                <td>
                    <button class="button2">x<sup>2</sup></button>
                    <button class="button2">x<sup>y</sup></button>
                    <button class="button2">sin</button>
                    <button class="button2">cos</button>
                    <button class="button2">tan</button>
                    <button class="button2">CE</button>
                    <button class="button2">C</button>
                    <button class="button2">&Chi;</button>
                    <button class="button2">&divide;</button>
                </td>
            </tr>
            <tr>
                <td>
                    <button class="button2">x<sup>y</sup></button>
                    <button class="button2">x&radic;y</button>
                    <button class="button2">sin<sup>-1</sup></button>
                    <button class="button2">cos<sup>-1</sup></button>
                    <button class="button2">tan<sup>-1</sup></button>
                    <button class="button2">7</button>
                    <button class="button2">8</button>
                    <button class="button2">9</button>
                    <button class="button2">&times;</button>
                </td>
            </tr>
            <tr>
                <td>
                    <button class="button2">&radic;</button>
                    <button class="button2">10<sup>x</sup></button>
                    <button class="button2">log</button>
                    <button class="button2">Exp</button>
                    <button class="button2">Mod</button>
                    <button class="button2">4</button>
                    <button class="button2">5</button>
                    <button class="button2">6</button>
                    <button class="button2">&ndash;</button>
                </td>
            </tr>
            <tr>
                <td>
                    <button class="button2">1/x</button>
                    <button class="button2">e<sup>x</sup></button>
                    <button class="button2">lon</button>
                    <button class="button2">dms</button>
                    <button class="button2">deg</button>
                    <button class="button2">1</button>
                    <button class="button2">2</button>
                    <button class="button2">3</button>
                    <button class="button2">+</button>
                </td>
            </tr>
            <tr>
                <td>
                    <button class="button2">&uarr;</button>
                    <button class="button2">&pi;</button>
                    <button class="button2">n!</button>
                    <button class="button2">(</button>
                    <button class="button2">)</button>
                    <button class="button2">+-</button>
                    <button class="button2">0</button>
                    <button class="button2">.</button>
                    <button class="button2">=</button>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

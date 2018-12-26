## JSP
Java Server Page  : 用 Java 写的 服务器页面
与之相同的技术有 ： PHP 、ASP等

### JSP 的本质
就是一个Servlet 

### JSP 的生命周期 
将JSP文件编译成 .java 文件 ---- .java 文件 编译成 .class 文件 ---加载——创建实例——init——反复service —— destory 

### JSP中可以有什么 
1、HTML标记 

2、HTML注释

3、用 <%%> 包起来的 Java代码 

4、<%=表达式%>

5、JSP 注释 

6、EL表达式 

7、其他的标签

### JSP 内置对象 
9 个 
request、response、session、page、pageContext、application、config、out、exception
如何使用 初始化参数，并 让 config 对象获取 ：
```
<servlet>
        <servlet-name>kk</servlet-name>
        <jsp-file>/jsp/innerObject.jsp</jsp-file>
        <init-param>
            <param-name>yy</param-name>
            <param-value>yy</param-value>
        </init-param>
    </servlet>
    <servlet-mapping>
        <servlet-name>kk</servlet-name>
        <url-pattern>/k</url-pattern>
    </servlet-mapping>
```
### 指令 
有且仅有三个指令 ： page  、taglib、include 
形式 ：
    <%@ 指令名称 属性名="属性值"%>
page ： 表示当前页面 也就是说 ： 在page中使用 属性 仅仅在当前页面有效 
    contentType ： 设置响应报头 
    language ： 告知容器在翻译 .jsp 文件 采用哪种语言 ，比如说java 
    autoFlush : 是否自动刷出
            true表示自动刷出
             
    buffer  ： 缓冲区大小 
    
    extends ： 告知容器需要继承哪个类
     
    import ： 导入 需要的包 
    
    isELIgnored ： 是否  忽略EL表达式 
    
    errorPage ： 指定错误页面是哪个页面 
        指 当前JSP页面发生错误了，去往哪个页面 
        
    isErrorPage  ： 是否 是 错误页面 
        isErrorPage="true" : 表示 当前页面是一个异常处理页面
            只有在  isErrorPage="true" 的JSP页面上才会  有一个exception 的内置对象 
            
        isErrorPage="false" : 表示当前页面不是一个异常处理页面 ， 这个是默认值 
        
    isThreadSafe : 当前页面是否是线程安全的，true | false 
    
    pageEncoding ： 指定当前页面的编码
     
    session ： 当前页面是否使用 session ， true 需要使用 false 不需要使用 
 
 include ：包含 （ 发生在 jsp 文件变成 .java 文件的时候 ）
        可以包含其他的 jsp文件或 html 文件 
  
  taglib : 
  
 ### EL 表达式 
  形式 ： ${表达式} ， 其本质就是一个字符串 ，只不过有程序处理而已 
  
  表达式 ： 圆点（ . ） 方括号[] 
  
  EL的保留字 ：
  
     and  eq 	gt 	true    not	   lt	  empty	    instanceof
  
     	or 	ne 	le  	false 	ge	   null	  div	    mod

内置对象 ：
                  pageContext   	
                 pageScope : 取得 page 范围内的 属性名称对应的值 ( 当前页面 )
                 requestScope ： 取得 request 范围的属性名称对应的值 ( 一次请求 )
                 sessionScope ： 取得session 范围内的属性名称对应的值 ( 一次会话 )
                 applicationScope  ： 取得 application 返回内的属性名称对应的值 ( 整个容器 ) 
                 param 
                 header
                 headerValues
  
   EL运算符 
      Addition: +、
      Substraction: -、
      Multiplication: *、
      Division: /、 div、
      Remainder: % 、 mod、
      == ：eq、
      !=：ne、
      < ： lt、
      >：gt、
      <=：le、
      >=: ge、
      &&：and、
      ||：or、
      ! ：not   


  
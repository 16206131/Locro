package com.nchu.servlet.user;

import com.nchu.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/register")
public class UserRegisterServlet extends HttpServlet {
    // 针对于 User 进行提供服务的类
    UserServices userServices = new UserServices() ;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = request.getParameter("uid");
        String nickname = request.getParameter("nickname");
        String password = request.getParameter("password");
//        String sex = request.getParameter("sex");
//        String birthday = request.getParameter("birthday");
//        String profile = request.getParameter("profile");
        String confirmPassword = request.getParameter("confirmPassword");
        /** 这个是关于验证码的 ： 自己去验证  */
        String inputCode = request.getParameter("inputCode") ;
        String code = (String) request.getSession().getAttribute("code") ;
        // 判断用户uid的长度
        if (uid.trim().length() != 11) {
            String msg = "请输入11位数字";
            request.setAttribute("uidMsg", msg);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        } else {
            boolean isUnique = userServices.isUnique(uid);
            if (isUnique) {
                // 能进入到这里，应该是可以进行注册的（ 用户名是没有问题的）
                if(nickname.trim().length()==0)
                {
                    String msg="请输入昵称";
                    request.setAttribute("nickMsg",msg);
                    request.getRequestDispatcher("/register.jsp").forward(request,response);
                }
                //检测密码
                if (password.equals(confirmPassword)) {
                    // 证明可以注册
                    boolean isRegist = userServices.regist( uid, nickname, password );
                    if (isRegist) {
                        // 注册成功
                        response.setContentType("text/html;charset=UTF-8");
                        response.getWriter().print("<h4>注册成功！</h4>");
                        response.setHeader("refresh", "3;url=/login.jsp");
                    } else {
                        // 注册失败
                        response.setContentType("text/html;charset=UTF-8");
                        response.getWriter().print("<h4>注册失败！</h4>");
                        response.setHeader("refresh", "3;url=/register.jsp");

                    }
                } else {
                    String passwordMsg = " 两次密码不相等 ";
                    request.setAttribute("passwordMsg", passwordMsg);
                    request.getRequestDispatcher("/register.jsp").forward(request, response);

                }
                if(!inputCode.toLowerCase().equals(code.toLowerCase()))
                {
                    String yzmMsg = " 验证码输入错误 ";
                    request.setAttribute("yzmMsg", yzmMsg);
                    request.getRequestDispatcher("/register.jsp").forward(request, response);
                }
            } else {
                String userMsg="用户名已经存在！";
                request.setAttribute("userMsg",userMsg);
                request.getRequestDispatcher("/register.jsp").forward(request,response);
            }

        }
    }
}

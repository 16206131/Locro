package com.nchu.servlet.user;

import com.nchu.entity.User;
import com.nchu.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/login")
public class UserLoginServlet extends HttpServlet
{
    UserServices userServices=new UserServices();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid=request.getParameter("uid");
        String password=request.getParameter("password");
        User user=userServices.login(uid,password);
        if(user!=null)
        {
            request.setAttribute("user",user);
            request.setAttribute("userNickname",user.getNickname());
            request.setAttribute("uid",user.getUid());
           request.getRequestDispatcher("/index.jsp").forward(request,response);

       }
       else
       { String loginMsg="用户名或密码错误";
           request.setAttribute("loginMsg",loginMsg);
            request.getRequestDispatcher("/login.jsp").forward(request,response);
       }
    }
}

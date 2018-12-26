package com.nchu.servlet.post;

import com.nchu.entity.Post;
import com.nchu.entity.User;
import com.nchu.services.PostServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/post/index2")
public class Post2Servlet extends HttpServlet
{
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PostServices postServices=new PostServices();
        Post[] posts= new Post[5];
        try {
            posts = postServices.loadByPageSub();
        } catch (Exception e) {
            e.printStackTrace();
        }
        User[] users=postServices.postUser();
        String userNickname=request.getParameter("userNickname");
        String uid=request.getParameter("uid");
        request.getSession().setAttribute("posts",posts);
        request.getSession().setAttribute("users",users);
        request.getSession().setAttribute("userNickname",userNickname);
        request.getSession().setAttribute("uid",uid);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}

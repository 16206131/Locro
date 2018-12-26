package com.nchu.servlet.post;

import com.nchu.entity.Post;
import com.nchu.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@WebServlet("/post/detail")
public class DetailServlet extends HttpServlet
{
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String postImage=request.getParameter("postImage");
        String postTitle=request.getParameter("postTitle");
        String postContent=request.getParameter("postContent");
        String postNickname=request.getParameter("postNickname");
        //String postDate=request.getParameter("postDate");

        request.getSession().setAttribute("postTitle",postTitle);
        request.getSession().setAttribute("postImage",postImage);
        request.getSession().setAttribute("postContent",postContent);
        request.getSession().setAttribute("postNickname",postNickname);
        //request.getSession().setAttribute("postDate",postDate);
        request.getRequestDispatcher("/postPage.jsp").forward(request,response);
    }
}


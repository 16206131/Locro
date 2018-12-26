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
@WebServlet("/post/search")
public class SearchServlet extends HttpServlet
{
    PostServices postServices=new PostServices();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchContent=request.getParameter("search");
        String userNickname=request.getParameter("userNickname");
        Post[] posts= new Post[1];
        User[] users=new User[1];
        try {
            posts = postServices.searchPosts(searchContent);
        } catch (Exception e) {
            e.printStackTrace();
        }
        users=postServices.getUserSearch();
        request.getSession().setAttribute("users",users);
        request.getSession().setAttribute("posts",posts);
        request.getSession().setAttribute("userNickname",userNickname);
        int count=0,i=0,start=0;
        while (posts[i]!=null)
        {
            count++;
            i++;
        }
        request.setAttribute("count",count);
        request.getRequestDispatcher("/searchResult.jsp").forward(request,response);

    }
}

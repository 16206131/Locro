package com.nchu.servlet.post;

import com.nchu.services.PostServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;

@WebServlet("/post/publishPost")
public class PublishPostServlet extends HttpServlet
{
    PostServices postServices=new PostServices();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        throw new RuntimeException("对不起，不支持 get 方式上传图片！");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Part p=request.getPart("file");
        p.write(p.getSubmittedFileName());

        String title=request.getParameter("title");
        String hometown=request.getParameter("hometown");
        String  chineseDish=request.getParameter("chineseDish");
        String foreignDish=request.getParameter("foreignDish");
        String snacks=request.getParameter("snacks");
        String back=request.getParameter("back");
        String textContent=request.getParameter("textContent");
        String image="/"+p.getSubmittedFileName();
        String uid=request.getParameter("uid");
        String textElements=request.getParameter("textElements");

        boolean isPublish=postServices.publishPost(title,hometown,chineseDish,foreignDish,snacks,back,textContent,textElements,image,uid);

    }
}

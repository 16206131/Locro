package com.nchu.services;

import com.nchu.dao.PostDao;
import com.nchu.entity.Post;
import com.nchu.entity.User;

import java.util.Date;
import java.util.List;

public class PostServices
{
    PostDao postDao=new PostDao();
    public Post[] loadByPageAdd() throws Exception {

            return postDao.loadByPageAdd();
        }

    public Post[] loadByPageSub() throws Exception {

        return postDao.loadByPageSub();
    }

    public User[] postUser()
    {
        return postDao.getPostUser();
    }


    public boolean enjoyPost(String title,String hometown,String chineseDish,String foreignDish,String snacks,String back,String text,String image,String uid)
    {
        boolean isEnjoy=postDao.enjoyPost(title,hometown,chineseDish,foreignDish,snacks,back,text,image,uid);

        return isEnjoy;
    }

    public boolean publishPost(String title,String hometown,String chineseDish,String foreignDish,String snacks,String back,String textContent,String textElements,String image,String uid)
    {
        boolean isPublish=postDao.publishPost(title,hometown,chineseDish,foreignDish,snacks,back,textContent,textElements,image,uid);

        return isPublish;
    }

    public Post[] searchPosts(String searchContent) throws Exception {
        return postDao.searchPosts(searchContent);
    }

    public User[] getUserSearch()
    {
        return postDao.getUsersSearch();
    }
}

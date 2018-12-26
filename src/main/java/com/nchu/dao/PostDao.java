package com.nchu.dao;

import com.nchu.entity.Post;
import com.nchu.entity.User;
import com.nchu.utils.JDBCHelper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostDao {
    String tableName=" t_post ";
    String tableName2=" t_user ";
    private User[] users=new User[5];
    private User[] usersSearch=new User[500];
    public static int down=-5;
    public Post[] loadByPageAdd() throws Exception
    {
        down=down+5;
        String SQL="(select nickname,password,sex,birthday,profile,pid,t_post.uid,c_hRecipes, c_chineseCuisine, c_snacks," +
                " c_fRecipes, c_bake, postDate, content, image, elements," +
                "zan, collection,commentNum,title from"+tableName2+","+tableName+"where t_user.uid=t_post.uid)"+" limit "+down+","+5;
        Post[] posts = new Post[5];
        ResultSet rs = JDBCHelper.query(SQL);

        posts = wrap(rs);
        return posts;
    }

    public Post[] loadByPageSub() throws Exception
    {
        down=down-5;

        if(down<0)
        {
            down=0;

        }
        String SQL="(select nickname,password,sex,birthday,profile,pid,t_post.uid,c_hRecipes, c_chineseCuisine, c_snacks," +
                " c_fRecipes, c_bake, postDate, content, image, elements," +
                "zan, collection,commentNum,title from"+tableName2+","+tableName+"where t_user.uid=t_post.uid)"+" limit "+down+","+5;
        Post[] posts = new Post[5];
        ResultSet rs = JDBCHelper.query(SQL);

        posts = wrap(rs);
        return posts;
    }
    private Post[] wrap(ResultSet rs) throws Exception
    {
        int judge=0;
        Post[] posts=new Post[5];
        if(rs!=null)
        {
            int i=0;
            while (rs.next())
            {
                Post post=new Post();
                User user=new User();
                post.setC_bake(rs.getString("c_bake"));
                post.setC_chineseCuisine(rs.getString("c_chineseCuisine"));
                post.setC_fRecipes(rs.getString("c_fRecipes"));
                post.setC_snacks(rs.getString("c_snacks"));
                post.setC_hRecipes(rs.getString("c_hRecipes"));
                post.setCollection(rs.getInt("collection"));
                post.setCommentNum(rs.getInt("commentNum"));
                post.setContent(rs.getString("content"));
                post.setElements(rs.getString("elements"));
                post.setImage(rs.getString("image"));
                post.setPid(rs.getInt("pid"));
                post.setUid(rs.getString("t_post.uid"));
                post.setZan(rs.getInt("zan"));
                post.setPostDate((Date)rs.getDate("postDate"));
                post.setTitle(rs.getString("title"));
                user.setUid(rs.getString("t_post.uid"));
                user.setNickname(rs.getString("nickname"));
                user.setBirthday(rs.getDate("birthday"));
                user.setPassword(rs.getString("password"));
                user.setProfile(rs.getString("profile"));
                user.setSex(rs.getString("sex"));
                posts[i]=post;
                usersSearch[i]=user;
                i++;
                judge++;
            }
        }

        if(judge<5)
        {
            down=down-5;
        }
        return posts;
    }

    public User[] getPostUser()
    {
        return users;
    }
    public User[] getUsersSearch()
    {
        return usersSearch;
    }

    public boolean enjoyPost(String title,String hometown,String chineseDish,String foreignDish,String snacks,String back,String text,String image,String uid)
    {
        String SQL="insert into"+tableName+"( title,c_hRecipes,c_chineseCuisine,c_fRecipes,c_snacks,c_bake,content,image,uid) values( ?,?,?,?,?,?,?,?,? )";
        boolean isEnjoy=JDBCHelper.execute(SQL,title,hometown,chineseDish,foreignDish,snacks,back,text,image,uid);
        return isEnjoy;
    }

    public boolean publishPost(String title,String hometown,String chineseDish,String foreignDish,String snacks,String back,String textContent,String textElements,String image,String uid)
    {
        String SQL="insert into"+tableName+"( title,c_hRecipes,c_chineseCuisine,c_fRecipes,c_snacks,c_bake,content,elements,image,uid) values( ?,?,?,?,?,?,?,?,?,? )";
        boolean isPublish=JDBCHelper.execute(SQL,title,hometown,chineseDish,foreignDish,snacks,back,textContent,textElements,image,uid);
        return isPublish;
    }

    public Post[] searchPosts(String searchContent) throws Exception {
        String SQL="select * from"+tableName+","+tableName2+"where title like ? and t_post.uid=t_user.uid";
        Post[] posts;
        String s="%"+searchContent+"%";
        ResultSet rs=JDBCHelper.query(SQL,s);
        posts=wrapSearch(rs);
        return posts;
    }

    private Post[] wrapSearch(ResultSet rs) throws Exception
    {
        Post[] posts=new Post[500];
        if(rs!=null)
        {
            int i=0;
            while (rs.next())
            {
                Post post=new Post();
                User user=new User();
                post.setC_bake(rs.getString("c_bake"));
                post.setC_chineseCuisine(rs.getString("c_chineseCuisine"));
                post.setC_fRecipes(rs.getString("c_fRecipes"));
                post.setC_snacks(rs.getString("c_snacks"));
                post.setC_hRecipes(rs.getString("c_hRecipes"));
                post.setCollection(rs.getInt("collection"));
                post.setCommentNum(rs.getInt("commentNum"));
                post.setContent(rs.getString("content"));
                post.setElements(rs.getString("elements"));
                post.setImage(rs.getString("image"));
                //post.setPid(rs.getInt("pid"));
                post.setUid(rs.getString("uid"));
                post.setZan(rs.getInt("zan"));
                post.setPostDate((Date)rs.getDate("postDate"));
                post.setTitle(rs.getString("title"));
                user.setUid(rs.getString("uid"));
                user.setNickname(rs.getString("nickname"));
                user.setBirthday(rs.getDate("birthday"));
                user.setPassword(rs.getString("password"));
                user.setProfile(rs.getString("profile"));
                user.setSex(rs.getString("sex"));
                posts[i]=post;
                usersSearch[i]=user;
                i++;

            }
        }
        return posts;
    }
}

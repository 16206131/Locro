package com.nchu.entity;

import java.sql.Date;
import java.time.LocalDateTime;

/**
 *
 -- MySQL
 create table t_post(
    pid int primary key ,
    uid varchar(20) ,
    c_hRecipes varchar(20) ,
    c_chineseCuisine varchar(20) ,
    c_snacks varchar(20) ,
    c_fRecipes varchar(20) ,
    bake varchar(20) ,
    postDate datetime ,
    content varchar(200) ,
    image varchar(100) ,
    elements varchar(100) ,
    zan int ,
    collection int ,
    commentNum int ,
    foreign key(uid) references t_user(uid)
 );
 */
public class Post {
    private int pid ;
    private String uid ;
    private String c_hRecipes ;
    private String c_chineseCuisine ;
    private String c_snacks ;
    private String c_fRecipes ;
    private String c_bake ;
    private Date postDate ;
    private String content ;
    public String image ;
    private String elements ;
    private int zan ;
    private int collection ;
    private int commentNum ;
    private String title;

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getC_hRecipes() {
        return c_hRecipes;
    }

    public void setC_hRecipes(String c_hRecipes) {
        this.c_hRecipes = c_hRecipes;
    }

    public String getC_chineseCuisine() {
        return c_chineseCuisine;
    }

    public void setC_chineseCuisine(String c_chineseCuisine) {
        this.c_chineseCuisine = c_chineseCuisine;
    }

    public String getC_snacks() {
        return c_snacks;
    }

    public void setC_snacks(String c_snacks) {
        this.c_snacks = c_snacks;
    }

    public String getC_fRecipes() {
        return c_fRecipes;
    }

    public void setC_fRecipes(String c_fRecipes) {
        this.c_fRecipes = c_fRecipes;
    }

    public String getC_bake() {
        return c_bake;
    }

    public void setC_bake(String c_bake) {
        this.c_bake = c_bake;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getElements() {
        return elements;
    }

    public void setElements(String elements) {
        this.elements = elements;
    }

    public int getZan() {
        return zan;
    }

    public void setZan(int zan) {
        this.zan = zan;
    }

    public int getCollection() {
        return collection;
    }

    public void setCollection(int collection) {
        this.collection = collection;
    }

    public int getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(int commentNum) {
        this.commentNum = commentNum;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

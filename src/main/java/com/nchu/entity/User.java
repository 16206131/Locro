package com.nchu.entity;

import java.util.Date;

/**
 * 这是一个实体类，用来表示一个用户，与之对应的数据库表中 的一条记录
 * 也就是说 在数据库中有一条记录，那么就表示成一个 User对象

 -- MySQL
 create table t_user(
    uid varchar(11) primary key ,// char
    nickname varchar(40) ,
    password varchar(40) ,
    sex varchar(2) ,
    birthday date ,
    profile varchar(100)
 );


 */
public class User {
    private String uid ;
    private String nickname ;
    private String password ;
    private String sex ;
    private Date birthday ;
    private String profile ;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date  getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
}

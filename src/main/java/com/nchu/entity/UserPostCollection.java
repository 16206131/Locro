package com.nchu.entity;

/**
 *
 --MySQL
 create table user_post_collection(
    uid varchar(11) ,
    pid int ,
    primary key( uid, pid )
 );
 */
public class UserPostCollection {
    private String uid ;
    private int pid ;

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }
}

package com.nchu.entity;

/**
 *
 --MySQL
 create table t_reply(
    rid int primary key ,
    pid int  ,
    id varchar(11) ,
    replyDate datetime ,
    content varchar(300)
    foreign key(pid) references t_post(pid) ,
    foreign key(uid) references t_user(uid)
 );
 */
public class Reply {
    private int rid ;
    private int pid ;
    private int uid ;
    private String replyDate ;
    private String content ;

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getReplyDate() {
        return replyDate;
    }

    public void setReplyDateate(String replyDate) {
        this.replyDate = replyDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}

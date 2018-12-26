package com.nchu.dao;

import com.nchu.entity.User;
import com.nchu.utils.JDBCHelper;
import com.nchu.utils.StringHelper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * DAO ： Data Access Object
 * 经常用于 访问数据库
 */
public class UserDao {
    String tableName = " t_user " ;

    public User loadByUsername(String uid ){
        // 利用 jdbc 访问数据库
        String SQL = "select uid , nickname , password,sex,birthday,profile"+
                tableName+"where uid = ? " ;
        ResultSet rs = JDBCHelper.query( SQL , uid ) ;
        User  u = wrap( rs ) ;
        return u ;
    }

    /**
     * 插入数据
     * @param u
     * @return
     */
    public boolean  insert( User u ){
        String SQL = "insert into " +tableName + "(uid,nickname,password) "+" values ( ? , ? , ? ) " ;
        return JDBCHelper.execute( SQL , u.getUid()  , u.getNickname() , u.getPassword()) ;
    }



    private User wrap ( ResultSet rs ){
        User u = null ;
        if( rs != null ){
            try {
                while (rs.next()) {
                    u = new User();
                    u.setUid(rs.getString("uid"));
                    u.setNickname(rs.getString("nickname"));
                    u.setPassword(rs.getString("password"));
                    u.setSex(rs.getString("sex"));
                    u.setBirthday(rs.getDate("birthday"));
                    u.setProfile(rs.getString("profile"));
                }
            }catch( SQLException e){
                e.printStackTrace();
            }
        }
        return u ;
    }

    public User loginBydb(String uid,String password)
    {
        String SQL="select uid , nickname , password,sex,birthday,profile from"+
        tableName+"where uid = ? and password= ? " ;
        ResultSet rs=JDBCHelper.query(SQL,uid,StringHelper.encrypt(password));
        return  wrap(rs);
    }
}
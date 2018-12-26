package com.nchu.services;

import com.nchu.dao.UserDao;
import com.nchu.entity.User;
import com.nchu.utils.StringHelper;

public class UserServices {
    UserDao userDao = new UserDao() ;

    /**
     * 根据用户名和密码检查是否存在这个用户
     * @param username
     * @param password
     * @return true 表示存在，false 表示不存在
     */
    public boolean load( String username , String password ){
        User u = userDao.loadByUsername( username ) ;
        if( u != null ){
            // 验证密码
            String userPassword = u.getPassword();
            // 判断两次密码是否相等
            if( userPassword.equals( StringHelper.encrypt( password ) ) ){
                return true ;
            }
        }
        return false ;
    }

    /**
     * 根据用户名查询当前注册的用户是否唯一
     * @param uid
     * @return
     */
    public boolean isUnique( String uid ){
        // 拿到 uid 去数据库中查询 ，如果有 ，证明 不可以注册， 返回 false
        User u = userDao.loadByUsername( uid ) ;
        if( u != null ){
            return false ;
        }
        return true ;
    }

    /**
     * 注册的方法
     */
    public boolean regist( String uid , String nickname,String password){
        User u = new User() ;
        u.setUid(uid);
        u.setNickname(nickname);
        u.setPassword(StringHelper.encrypt(password));
        return userDao.insert( u ) ;
    }

    public User login(String uid,String password)
    {
        return userDao.loginBydb(uid,password);
    }
}

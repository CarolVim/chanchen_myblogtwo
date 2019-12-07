package com.myblog.dao;

import com.myblog.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;


@Repository
public interface UserDao {
   public Integer CheckUser(@Param("userName") String userName,@Param("userPass") String userPass);
   public Integer isExist(@Param("userPass") String userPass);
   public void ChangeLoginDetail(@Param("address") String address,@Param("lastLoginTime") String lastLoginTime ,@Param("userName") String userName);
   public User SelectUser(@Param("userName") String userName);
   public void EditorUser(@Param("picUrl")String picUrl,@Param("userId") Integer userId);
   public void EditorPasswd(@Param("userPass") String userPass,@Param("userId") Integer userId);
   public User SelectPass(@Param("userId") Integer userId);
   public List<User> SelectAll();
   public User SelectById(@Param("userId") Integer userId);
}

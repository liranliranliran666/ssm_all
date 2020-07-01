package cn.bdqn.service;

import cn.bdqn.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {

    User loginUser(@Param("username")String username, @Param("password")String password);

    int count();

    List<User> findAll();

    List<User> findAllByname(@Param("username")String username);

    int add(User user);

    User getById(Integer id);

    int updateUser(User user);

    int delete(Integer id);
}

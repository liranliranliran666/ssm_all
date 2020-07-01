package cn.bdqn.service.impl;

import cn.bdqn.dao.UserDao;
import cn.bdqn.pojo.User;
import cn.bdqn.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl  implements UserService {

    @Resource
    UserDao userDao;

    @Override
    public User loginUser(String username, String password) {
    return userDao.loginUser(username, password);
    }

    @Override
    public int count() {
        return userDao.count();
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public List<User> findAllByname(String username) {
        return userDao.findAllByname(username);
    }

    @Override
    public int add(User user) {
        return userDao.add(user);
    }

    @Override
    public User getById(Integer id) {
        return userDao.getById(id);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public int delete(Integer id) {
        return userDao.delete(id);
    }
}

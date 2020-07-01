package cn.bdqn.service.impl;

import cn.bdqn.pojo.User;
import cn.bdqn.service.UserService;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserServiceImplTest {
    Logger logger;
    UserService userService;

    @Before
    public void before(){
        logger = Logger.getLogger(UserServiceImplTest.class);
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        userService = (UserService) ac.getBean("userService");
    }

    @Test
    public void count() {
        logger.debug("查询到的用户总数:"+userService.count());
    }

    @Test
    public void findAllUser() {
        logger.debug("查询到是所有用户");
        userService.findAll().forEach(logger::debug);
    }

    @Test
    public void testAddUser() {
        User user = new User();
        user.setUsername("宝华");
        user.setPassword("666666");
        logger.debug("添加成功!"+userService.add(user));
    }

    @Test
    public void testUpdateUser() {
        User user = new User();
        user.setId(7);
        user.setUsername("华哥");
        user.setPassword("123456");
        logger.debug("更新成功!"+userService.updateUser(user));
    }
    @Test
    public void testDeleteUser() {
        logger.debug("删除成功!"+userService.delete(6));
    }

    @Test
    public void testLogin() {
        logger.debug("登录成功!"+userService.loginUser("lisi","123"));
    }
}
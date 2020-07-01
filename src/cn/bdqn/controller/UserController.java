package cn.bdqn.controller;

import cn.bdqn.pojo.User;
import cn.bdqn.service.UserService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

    @Resource
    UserService userService;

    @RequestMapping("/hello")
    public String index(String name, Model model
    ) {
        model.addAttribute("name", name);
        return "manage/login";
    }

    @RequestMapping("/tologin")
    public String tologin(){
        //返回登录页面
        return "portal/login";
    }

    @RequestMapping("/tohome")
    public String tohome(){
        //返回管理员首页页面
        return "portal/home";
    }

    @RequestMapping("/toregister")
    public String toregister(){
        //返回注册页面
        return "portal/register";
    }

    @RequestMapping("/toindex")
    public String toindex(){
        //返回注册页面
        return "portal/index";
    }
    @RequestMapping("/toexit")
    public String toexit(){
        //返回注册页面
        return "portal/index2";
    }
    @RequestMapping("/toshopcart")
    public String toshopcart(){
        //返回购物车页面
        return "portal/shopcart";
    }
    @RequestMapping("/tocollection")
    public String tocollection(){
        //返回收藏夹页面
        return "portal/collection";
    }
    @RequestMapping("/toorder")
    public String toorder(){
        //返回订单管理页面
        return "portal/order";
    }
    @RequestMapping("/toorderinfo")
    public String toorderinfo(){
        //返回订单管理页面
        return "portal/orderinfo";
    }
    @RequestMapping("/tochange")
    public String tochange(){
        //返回退款售后页面
        return "portal/change";
    }
    @RequestMapping("/tocoupon")
    public String tocoupon(){
        //返回优惠券页面
        return "portal/coupon";
    }
    @RequestMapping("/tobonus")
    public String tobonus(){
        //返回红包页面
        return "portal/bonus";
    }
    @RequestMapping("/tobill")
    public String tobill(){
        //返回账单明细页面
        return "portal/bill";
    }
    @RequestMapping("/tofoot")
    public String tofoot(){
        //返回足迹页面
        return "portal/foot";
    }
    @RequestMapping("/tocomment")
    public String tocomment(){
        //返回评价页面
        return "portal/comment";
    }
    @RequestMapping("/tonews")
    public String tonews(){
        //返回消息页面
        return "portal/news";
    }
    @RequestMapping("/toblog")
    public String toblog(){
        //返回新鲜事页面
        return "portal/blog";
    }
    @RequestMapping("/tologistics")
    public String tologistics(){
        //返回订单签收页面
        return "portal/logistics";
    }
    @RequestMapping("/torecord")
    public String torecord(){
        //返回交易信息页面
        return "portal/record";
    }
    @RequestMapping("/torefund")
    public String torefund(){
        //返回退款页面
        return "portal/refund";
    }
    @RequestMapping("/tocommentlist")
    public String tocommentlist(){
        //返回评价页面
        return "portal/commentlist";
    }
    @RequestMapping("/topay")
    public String topay(){
        //返回付款页面
        return "portal/pay";
    }
    @RequestMapping("/toaddress")
    public String toaddress(){
        //返回地址页面
        return "portal/address";
    }
    @RequestMapping("/tosuccess")
    public String tosuccess(){
        //返回地址页面
        return "portal/success";
    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(
            @RequestParam(value = "username") String username,
            @RequestParam(value = "password") String password,
            HttpSession session,HttpServletRequest request
                       ){
       User user = userService.loginUser(username,password);

        if(user!=null && user.getUsername().equals("lisi")){
            session.setAttribute("user",user);
            return "manage/index";
        }else if(user!=null){
            session.setAttribute("user",user);
            return "portal/index";
        }else{
            request.setAttribute("error","用户名或密码错误！");
            return "portal/login";
        }
    }

    @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
    @ResponseBody
    public String register(HttpServletRequest request,User user){
        Map map = new HashMap<String,Object>();
        map.put("add",userService.add(user));
        return JSONObject.toJSONString(map);
    }


    @RequestMapping("/findByName/{username}")
    @ResponseBody
    public Object finByName(@PathVariable("username") String username){
        User  user= (User) userService.findAllByname(username);
        Map  map=new HashMap<String,Object>();
        map.put("user",user);
        return JSONObject.toJSONString(map);
    }

    @RequestMapping("/findByusername")
    public String findByuserList(@RequestParam("un")String un,Model model) {
        List<User> users = userService.findAllByname(un);
        model.addAttribute("users", users);
        return "manage/user_list";
    }


    @RequestMapping("/list")
    // @RequestMapping("/list/{pageNo}/{pageSize}")
    public String userList(Model model
            /*,            @PathVariable("pageNo") Integer pageNo,
                           @PathVariable("pageSize") Integer pageSize*/
    ) {
        //if (pageNo < 1) pageNo = 1;
        //if (pageSize <= 0) pageSize = 10;
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "manage/user_list";
    }

    @RequestMapping("/member")
    // @RequestMapping("/list/{pageNo}/{pageSize}")
    public String tomember(Model model
    ) {
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "manage/member-Grading";
    }
    @RequestMapping("/integration")
    // @RequestMapping("/list/{pageNo}/{pageSize}")
    public String tointegration(Model model
    ) {
        return "manage/integration";
    }

    @RequestMapping("/id/{id}")
    public String userList(Model model,
                           @PathVariable("id") Integer id) {
        if (!StringUtils.isEmpty(id)) {
            model.addAttribute("user", userService.getById(id));
        }
        return "manage/user_list";
    }

    /**
     * 修改信息
     *
     * @return
     */
    @RequestMapping("/updateId/{id}")
    @ResponseBody
    public Object update(@PathVariable("id") Integer id) {
             User  user=userService.getById(id);
             Map  map=new HashMap<String,Object>();
             map.put("user",user);
            return JSONObject.toJSONString(map);

    }

    @RequestMapping(value = "/updateUser/{id}", method = RequestMethod.POST)
    @ResponseBody
    public String updateUser(@PathVariable("id") Integer id,HttpServletRequest request) throws ParseException {
        Map map = new HashMap<String,Object>();
        User user = new User();
        user.setId(id);
        user.setUsername(request.getParameter("username"));
        user.setName(request.getParameter("name"));
        user.setPassword(request.getParameter("password"));
        user.setSex(Integer.parseInt(request.getParameter("sex")));
        user.setPhone(request.getParameter("phone"));
        user.setEmail(request.getParameter("email"));
        user.setAddress(request.getParameter("address"));
        user.setStatus(request.getParameter("status"));
        map.put("update",userService.updateUser(user));
        return JSONObject.toJSONString(map);
    }


    /**
     * 删除信息
     */
    @RequestMapping(value = "/delete/{id}")
    @ResponseBody
    public Object Dele_info(@PathVariable("id") Integer id) {
        int  del=userService.delete(id);
        Map  map=new HashMap<String,Object>();
        map.put("user",del);
        return JSONObject.toJSONString(map);
    }

    @RequestMapping("/add")
    public String add(Model model) {
        return "addUser";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    @ResponseBody
    public String addU(HttpServletRequest request) throws ParseException {
        Map map = new HashMap<String,Object>();
        User user = new User();
        user.setUsername(request.getParameter("username"));
        user.setName(request.getParameter("name"));
        user.setPassword(request.getParameter("password"));
        user.setSex(Integer.parseInt(request.getParameter("sex")));
        user.setPhone(request.getParameter("phone"));
        user.setEmail(request.getParameter("email"));
        user.setAddress(request.getParameter("address"));
        user.setStatus(request.getParameter("status"));
        user.setUser_level(Integer.parseInt(request.getParameter("user_level")));
        user.setCreate_time(df.parse((String) request.getParameter("create_time")));
        map.put("add",userService.add(user));
        return JSONObject.toJSONString(map);
    }

    @RequestMapping(value = " /portalUser")
   public String portalUser(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/userInfo";
    }
    @RequestMapping(value = " /portalUserId")
    public String portalUserId(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/information";
    }
    @RequestMapping(value = " /portalUserId2")
    public String portalUserId2(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/safety";
    }

    @RequestMapping(value = " /toUpdatePwd")
    public String toUpdatePwd(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/password";
    }

    @RequestMapping(value = "/updateUserPwd/{id}", method = RequestMethod.POST)
    @ResponseBody
    public String updateUserPwd(@PathVariable("id") Integer id,HttpServletRequest request){
        Map map = new HashMap<String,Object>();
        User user = new User();
        user.setId(id);
        user.setPassword(request.getParameter("password"));
        map.put("update",userService.updateUser(user));
        return JSONObject.toJSONString(map);
    }

    @RequestMapping(value = " /tosetpay")
    public String tosetpay(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/setpay";
    }
    @RequestMapping(value = " /tobindphone")
    public String tobindphone(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/bindphone";
    }
    @RequestMapping(value = " /toemail")
    public String toemail(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/email";
    }
    @RequestMapping(value = " /toidcard")
    public String toidcard(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/idcard";
    }
    @RequestMapping(value = " /toquestion")
    public String toquestion(HttpSession session,Integer id,  Model model) {
        User user = (User) session.getAttribute("user");
        id=user.getId();
        model.addAttribute("user", userService.getById(id));
        return "portal/question";
    }


}

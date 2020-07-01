package cn.bdqn.pojo;

import java.util.Date;

public class User {
    private Integer id;
    private String username;
    private String password;
    private String phone;
    private String email;
    private Date create_time;
    private Date update_time;
    private String source_type;
    private String nick_name;
    private String name;
    private String status;
    private String head_pic;
    private String qq;
    private Double account_balance;
    private String is_mobile_check;
    private String is_email_check;
    private Integer sex;
    private Integer user_level;
    private Integer points;
    private Integer experience_value;
    private Date birthday;
    private Date last_login_time;
    private String address;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                ", source_type='" + source_type + '\'' +
                ", nick_name='" + nick_name + '\'' +
                ", name='" + name + '\'' +
                ", status='" + status + '\'' +
                ", head_pic='" + head_pic + '\'' +
                ", qq='" + qq + '\'' +
                ", account_balance=" + account_balance +
                ", is_mobile_check='" + is_mobile_check + '\'' +
                ", is_email_check='" + is_email_check + '\'' +
                ", sex='" + sex + '\'' +
                ", user_level='" + user_level + '\'' +
                ", points=" + points +
                ", experience_value=" + experience_value +
                ", birthday=" + birthday +
                ", last_login_time=" + last_login_time +
                ", address='" + address + '\'' +
                '}';
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }

    public String getSource_type() {
        return source_type;
    }

    public void setSource_type(String source_type) {
        this.source_type = source_type;
    }

    public String getNick_name() {
        return nick_name;
    }

    public void setNick_name(String nick_name) {
        this.nick_name = nick_name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getHead_pic() {
        return head_pic;
    }

    public void setHead_pic(String head_pic) {
        this.head_pic = head_pic;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public Double getAccount_balance() {
        return account_balance;
    }

    public void setAccount_balance(Double account_balance) {
        this.account_balance = account_balance;
    }

    public String getIs_mobile_check() {
        return is_mobile_check;
    }

    public void setIs_mobile_check(String is_mobile_check) {
        this.is_mobile_check = is_mobile_check;
    }

    public String getIs_email_check() {
        return is_email_check;
    }

    public void setIs_email_check(String is_email_check) {
        this.is_email_check = is_email_check;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getUser_level() {
        return user_level;
    }

    public void setUser_level(Integer user_level) {
        this.user_level = user_level;
    }

    public Integer getPoints() {
        return points;
    }

    public void setPoints(Integer points) {
        this.points = points;
    }

    public Integer getExperience_value() {
        return experience_value;
    }

    public void setExperience_value(Integer experience_value) {
        this.experience_value = experience_value;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Date getLast_login_time() {
        return last_login_time;
    }

    public void setLast_login_time(Date last_login_time) {
        this.last_login_time = last_login_time;
    }
}


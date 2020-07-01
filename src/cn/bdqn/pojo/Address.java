package cn.bdqn.pojo;

import java.util.Date;

public class Address {
    private Integer id;
    private String user_id;
    private String province_id;
    private String city_id;
    private String town_id;
    private String mobile;
    private String address;
    private String contact;
    private String is_default;
    private String notes;
    private Date create_date;
    private String alias;

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", user_id='" + user_id + '\'' +
                ", province_id='" + province_id + '\'' +
                ", city_id='" + city_id + '\'' +
                ", town_id='" + town_id + '\'' +
                ", mobile='" + mobile + '\'' +
                ", address='" + address + '\'' +
                ", contact='" + contact + '\'' +
                ", is_default='" + is_default + '\'' +
                ", notes='" + notes + '\'' +
                ", create_date=" + create_date +
                ", alias='" + alias + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getProvince_id() {
        return province_id;
    }

    public void setProvince_id(String province_id) {
        this.province_id = province_id;
    }

    public String getCity_id() {
        return city_id;
    }

    public void setCity_id(String city_id) {
        this.city_id = city_id;
    }

    public String getTown_id() {
        return town_id;
    }

    public void setTown_id(String town_id) {
        this.town_id = town_id;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getIs_default() {
        return is_default;
    }

    public void setIs_default(String is_default) {
        this.is_default = is_default;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }
}

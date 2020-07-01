package cn.bdqn.pojo;

import java.util.Date;

public class Brand {
    private Integer id;
    private String name;
    private String first_char;
    private String logo_img;
    private Date create_time;
    private Date update_time;
    private String status;
    private String desc;
    private Integer sort;
    private String country;

    @Override
    public String toString() {
        return "Brand{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", first_char='" + first_char + '\'' +
                ", logo_img='" + logo_img + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                ", status='" + status + '\'' +
                ", desc='" + desc + '\'' +
                ", sort=" + sort +
                ", country='" + country + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirst_char() {
        return first_char;
    }

    public void setFirst_char(String first_char) {
        this.first_char = first_char;
    }

    public String getLogo_img() {
        return logo_img;
    }

    public void setLogo_img(String logo_img) {
        this.logo_img = logo_img;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}

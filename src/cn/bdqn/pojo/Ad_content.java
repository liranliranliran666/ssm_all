package cn.bdqn.pojo;

import java.util.Date;

public class Ad_content {
    private Integer id;
    private String name;
    private String title;
    private Integer categoryId1;
    private Integer categoryId2;
    private Integer categoryId3;
    private String categoryName3;
    private Integer sort;
    private String img;
    private String img_size;
    private String url;
    private Date create_time;
    private Date update_time;
    private String status;
    private String description;

    @Override
    public String toString() {
        return "Ad_content{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", categoryId1=" + categoryId1 +
                ", categoryId2=" + categoryId2 +
                ", categoryId3=" + categoryId3 +
                ", categoryName3='" + categoryName3 + '\'' +
                ", sort=" + sort +
                ", img='" + img + '\'' +
                ", img_size='" + img_size + '\'' +
                ", url='" + url + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                ", status='" + status + '\'' +
                ", description='" + description + '\'' +
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getCategoryId1() {
        return categoryId1;
    }

    public void setCategoryId1(Integer categoryId1) {
        this.categoryId1 = categoryId1;
    }

    public Integer getCategoryId2() {
        return categoryId2;
    }

    public void setCategoryId2(Integer categoryId2) {
        this.categoryId2 = categoryId2;
    }

    public Integer getCategoryId3() {
        return categoryId3;
    }

    public void setCategoryId3(Integer categoryId3) {
        this.categoryId3 = categoryId3;
    }

    public String getCategoryName3() {
        return categoryName3;
    }

    public void setCategoryName3(String categoryName3) {
        this.categoryName3 = categoryName3;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImg_size() {
        return img_size;
    }

    public void setImg_size(String img_size) {
        this.img_size = img_size;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

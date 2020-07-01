package cn.bdqn.pojo;

import java.util.Date;

public class Ad_category {
    private Integer id;
    private String name;
    private Integer parent_id;
    private Date create_time;
    private Date update_time;
    private Integer sort;
    private String desc;
    private Boolean is_parent;
    private Integer num;

    @Override
    public String toString() {
        return "Ad_category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", parent_id=" + parent_id +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                ", sort=" + sort +
                ", desc='" + desc + '\'' +
                ", is_parent=" + is_parent +
                ", num=" + num +
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

    public Integer getParent_id() {
        return parent_id;
    }

    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
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

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Boolean getIs_parent() {
        return is_parent;
    }

    public void setIs_parent(Boolean is_parent) {
        this.is_parent = is_parent;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}

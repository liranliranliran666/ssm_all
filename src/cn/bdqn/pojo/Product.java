package cn.bdqn.pojo;

import java.util.Date;

public class Product {
    private Integer product_id;
    private String product_name;
    private String seller_id;
    private Integer default_sku_id;
    private String audit_status;
    private String is_marketable;
    private Integer brand_id;
    private String caption;
    private Integer category1_id;
    private Integer category2_id;
    private Integer category3_id;
    private String big_pic;
    private String mid_pic;
    private String small_pic;
    private Double price;
    private Integer type_template_id;
    private String is_enable_spec;
    private String is_delete;
    private Date create_time;
    private Date update_time;

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", seller_id='" + seller_id + '\'' +
                ", default_sku_id=" + default_sku_id +
                ", audit_status='" + audit_status + '\'' +
                ", is_marketable='" + is_marketable + '\'' +
                ", brand_id=" + brand_id +
                ", caption='" + caption + '\'' +
                ", category1_id=" + category1_id +
                ", category2_id=" + category2_id +
                ", category3_id=" + category3_id +
                ", big_pic='" + big_pic + '\'' +
                ", mid_pic='" + mid_pic + '\'' +
                ", small_pic='" + small_pic + '\'' +
                ", price=" + price +
                ", type_template_id=" + type_template_id +
                ", is_enable_spec='" + is_enable_spec + '\'' +
                ", is_delete='" + is_delete + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                '}';
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(String seller_id) {
        this.seller_id = seller_id;
    }

    public Integer getDefault_sku_id() {
        return default_sku_id;
    }

    public void setDefault_sku_id(Integer default_sku_id) {
        this.default_sku_id = default_sku_id;
    }

    public String getAudit_status() {
        return audit_status;
    }

    public void setAudit_status(String audit_status) {
        this.audit_status = audit_status;
    }

    public String getIs_marketable() {
        return is_marketable;
    }

    public void setIs_marketable(String is_marketable) {
        this.is_marketable = is_marketable;
    }

    public Integer getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(Integer brand_id) {
        this.brand_id = brand_id;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public Integer getCategory1_id() {
        return category1_id;
    }

    public void setCategory1_id(Integer category1_id) {
        this.category1_id = category1_id;
    }

    public Integer getCategory2_id() {
        return category2_id;
    }

    public void setCategory2_id(Integer category2_id) {
        this.category2_id = category2_id;
    }

    public Integer getCategory3_id() {
        return category3_id;
    }

    public void setCategory3_id(Integer category3_id) {
        this.category3_id = category3_id;
    }

    public String getBig_pic() {
        return big_pic;
    }

    public void setBig_pic(String big_pic) {
        this.big_pic = big_pic;
    }

    public String getMid_pic() {
        return mid_pic;
    }

    public void setMid_pic(String mid_pic) {
        this.mid_pic = mid_pic;
    }

    public String getSmall_pic() {
        return small_pic;
    }

    public void setSmall_pic(String small_pic) {
        this.small_pic = small_pic;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getType_template_id() {
        return type_template_id;
    }

    public void setType_template_id(Integer type_template_id) {
        this.type_template_id = type_template_id;
    }

    public String getIs_enable_spec() {
        return is_enable_spec;
    }

    public void setIs_enable_spec(String is_enable_spec) {
        this.is_enable_spec = is_enable_spec;
    }

    public String getIs_delete() {
        return is_delete;
    }

    public void setIs_delete(String is_delete) {
        this.is_delete = is_delete;
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
}

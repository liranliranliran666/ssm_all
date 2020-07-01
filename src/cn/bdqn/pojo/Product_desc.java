package cn.bdqn.pojo;

public class Product_desc {
    private Integer product_id;
    private String introduction;
    private String specification_items;
    private String custom_attribute_items;
    private String product_images;
    private String package_list;
    private String sale_service;

    @Override
    public String toString() {
        return "Product_desc{" +
                "product_id=" + product_id +
                ", introduction='" + introduction + '\'' +
                ", specification_items='" + specification_items + '\'' +
                ", custom_attribute_items='" + custom_attribute_items + '\'' +
                ", product_images='" + product_images + '\'' +
                ", package_list='" + package_list + '\'' +
                ", sale_service='" + sale_service + '\'' +
                '}';
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getSpecification_items() {
        return specification_items;
    }

    public void setSpecification_items(String specification_items) {
        this.specification_items = specification_items;
    }

    public String getCustom_attribute_items() {
        return custom_attribute_items;
    }

    public void setCustom_attribute_items(String custom_attribute_items) {
        this.custom_attribute_items = custom_attribute_items;
    }

    public String getProduct_images() {
        return product_images;
    }

    public void setProduct_images(String product_images) {
        this.product_images = product_images;
    }

    public String getPackage_list() {
        return package_list;
    }

    public void setPackage_list(String package_list) {
        this.package_list = package_list;
    }

    public String getSale_service() {
        return sale_service;
    }

    public void setSale_service(String sale_service) {
        this.sale_service = sale_service;
    }
}

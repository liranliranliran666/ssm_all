package cn.bdqn.pojo;

public class Sku {
    private Integer sku_id;
    private String title;
    private String sell_point;
    private Double price;
    private Integer stock_count;
    private String barcode;
    private String image;
    private Integer categoryId;
    private String status;
    private String create_time;
    private String update_time;
    private Double cost_pirce;
    private Double market_price;
    private String is_default;
    private Integer product_id;
    private String category;
    private String brand;
    private String spec;

    @Override
    public String toString() {
        return "Sku{" +
                "sku_id=" + sku_id +
                ", title='" + title + '\'' +
                ", sell_point='" + sell_point + '\'' +
                ", price=" + price +
                ", stock_count=" + stock_count +
                ", barcode='" + barcode + '\'' +
                ", image='" + image + '\'' +
                ", categoryId=" + categoryId +
                ", status='" + status + '\'' +
                ", create_time='" + create_time + '\'' +
                ", update_time='" + update_time + '\'' +
                ", cost_pirce=" + cost_pirce +
                ", market_price=" + market_price +
                ", is_default='" + is_default + '\'' +
                ", product_id=" + product_id +
                ", category='" + category + '\'' +
                ", brand='" + brand + '\'' +
                ", spec='" + spec + '\'' +
                '}';
    }

    public Integer getSku_id() {
        return sku_id;
    }

    public void setSku_id(Integer sku_id) {
        this.sku_id = sku_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSell_point() {
        return sell_point;
    }

    public void setSell_point(String sell_point) {
        this.sell_point = sell_point;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getStock_count() {
        return stock_count;
    }

    public void setStock_count(Integer stock_count) {
        this.stock_count = stock_count;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(String update_time) {
        this.update_time = update_time;
    }

    public Double getCost_pirce() {
        return cost_pirce;
    }

    public void setCost_pirce(Double cost_pirce) {
        this.cost_pirce = cost_pirce;
    }

    public Double getMarket_price() {
        return market_price;
    }

    public void setMarket_price(Double market_price) {
        this.market_price = market_price;
    }

    public String getIs_default() {
        return is_default;
    }

    public void setIs_default(String is_default) {
        this.is_default = is_default;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }
}

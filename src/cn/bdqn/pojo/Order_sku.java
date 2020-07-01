package cn.bdqn.pojo;

public class Order_sku {
    private Integer id;
    private Integer sku_id;
    private Integer goods_id;
    private Integer order_id;
    private String title;
    private Double price;
    private Integer num;
    private Double total_fee;
    private String pic_path;
    private String seller_id;

    @Override
    public String toString() {
        return "Order_sku{" +
                "id=" + id +
                ", sku_id=" + sku_id +
                ", goods_id=" + goods_id +
                ", order_id=" + order_id +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", num=" + num +
                ", total_fee=" + total_fee +
                ", pic_path='" + pic_path + '\'' +
                ", seller_id='" + seller_id + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSku_id() {
        return sku_id;
    }

    public void setSku_id(Integer sku_id) {
        this.sku_id = sku_id;
    }

    public Integer getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(Integer goods_id) {
        this.goods_id = goods_id;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Double getTotal_fee() {
        return total_fee;
    }

    public void setTotal_fee(Double total_fee) {
        this.total_fee = total_fee;
    }

    public String getPic_path() {
        return pic_path;
    }

    public void setPic_path(String pic_path) {
        this.pic_path = pic_path;
    }

    public String getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(String seller_id) {
        this.seller_id = seller_id;
    }
}

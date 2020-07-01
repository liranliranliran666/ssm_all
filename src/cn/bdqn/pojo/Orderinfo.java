package cn.bdqn.pojo;

import java.util.Date;

public class Orderinfo {
    private Integer order_id;
    private Double payment;
    private String payment_type;
    private String post_fee;
    private String status;
    private Date create_time;
    private Date update_time;
    private Date payment_time;
    private Date consign_time;
    private Date end_time;
    private Date close_time;
    private String shipping_name;
    private String shipping_code;
    private String user_id;
    private String buyer_message;
    private String buyer_nick;
    private String buyer_rate;
    private String receiver_area_name;
    private String receiver_mobile;
    private String receiver_zip_code;
    private String receiver;
    private Date expire;
    private String invoice_type;
    private String source_type;
    private String seller_id;

    @Override
    public String toString() {
        return "Orderinfo{" +
                "order_id=" + order_id +
                ", payment=" + payment +
                ", payment_type='" + payment_type + '\'' +
                ", post_fee='" + post_fee + '\'' +
                ", status='" + status + '\'' +
                ", create_time=" + create_time +
                ", update_time=" + update_time +
                ", payment_time=" + payment_time +
                ", consign_time=" + consign_time +
                ", end_time=" + end_time +
                ", close_time=" + close_time +
                ", shipping_name='" + shipping_name + '\'' +
                ", shipping_code='" + shipping_code + '\'' +
                ", user_id='" + user_id + '\'' +
                ", buyer_message='" + buyer_message + '\'' +
                ", buyer_nick='" + buyer_nick + '\'' +
                ", buyer_rate='" + buyer_rate + '\'' +
                ", receiver_area_name='" + receiver_area_name + '\'' +
                ", receiver_mobile='" + receiver_mobile + '\'' +
                ", receiver_zip_code='" + receiver_zip_code + '\'' +
                ", receiver='" + receiver + '\'' +
                ", expire=" + expire +
                ", invoice_type='" + invoice_type + '\'' +
                ", source_type='" + source_type + '\'' +
                ", seller_id='" + seller_id + '\'' +
                '}';
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public Double getPayment() {
        return payment;
    }

    public void setPayment(Double payment) {
        this.payment = payment;
    }

    public String getPayment_type() {
        return payment_type;
    }

    public void setPayment_type(String payment_type) {
        this.payment_type = payment_type;
    }

    public String getPost_fee() {
        return post_fee;
    }

    public void setPost_fee(String post_fee) {
        this.post_fee = post_fee;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public Date getPayment_time() {
        return payment_time;
    }

    public void setPayment_time(Date payment_time) {
        this.payment_time = payment_time;
    }

    public Date getConsign_time() {
        return consign_time;
    }

    public void setConsign_time(Date consign_time) {
        this.consign_time = consign_time;
    }

    public Date getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Date end_time) {
        this.end_time = end_time;
    }

    public Date getClose_time() {
        return close_time;
    }

    public void setClose_time(Date close_time) {
        this.close_time = close_time;
    }

    public String getShipping_name() {
        return shipping_name;
    }

    public void setShipping_name(String shipping_name) {
        this.shipping_name = shipping_name;
    }

    public String getShipping_code() {
        return shipping_code;
    }

    public void setShipping_code(String shipping_code) {
        this.shipping_code = shipping_code;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getBuyer_message() {
        return buyer_message;
    }

    public void setBuyer_message(String buyer_message) {
        this.buyer_message = buyer_message;
    }

    public String getBuyer_nick() {
        return buyer_nick;
    }

    public void setBuyer_nick(String buyer_nick) {
        this.buyer_nick = buyer_nick;
    }

    public String getBuyer_rate() {
        return buyer_rate;
    }

    public void setBuyer_rate(String buyer_rate) {
        this.buyer_rate = buyer_rate;
    }

    public String getReceiver_area_name() {
        return receiver_area_name;
    }

    public void setReceiver_area_name(String receiver_area_name) {
        this.receiver_area_name = receiver_area_name;
    }

    public String getReceiver_mobile() {
        return receiver_mobile;
    }

    public void setReceiver_mobile(String receiver_mobile) {
        this.receiver_mobile = receiver_mobile;
    }

    public String getReceiver_zip_code() {
        return receiver_zip_code;
    }

    public void setReceiver_zip_code(String receiver_zip_code) {
        this.receiver_zip_code = receiver_zip_code;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public Date getExpire() {
        return expire;
    }

    public void setExpire(Date expire) {
        this.expire = expire;
    }

    public String getInvoice_type() {
        return invoice_type;
    }

    public void setInvoice_type(String invoice_type) {
        this.invoice_type = invoice_type;
    }

    public String getSource_type() {
        return source_type;
    }

    public void setSource_type(String source_type) {
        this.source_type = source_type;
    }

    public String getSeller_id() {
        return seller_id;
    }

    public void setSeller_id(String seller_id) {
        this.seller_id = seller_id;
    }
}

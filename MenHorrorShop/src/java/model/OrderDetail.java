/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class OrderDetail {
    OrderUser order;
    Product product;

    public OrderDetail() {
    }

    public OrderDetail(OrderUser order, Product product) {
        this.order = order;
        this.product = product;
    }

    public OrderUser getOrder() {
        return order;
    }

    public void setOrder(OrderUser order) {
        this.order = order;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    
    
}

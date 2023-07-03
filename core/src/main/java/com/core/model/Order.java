package com.core.model;

import javax.persistence.*;
import java.util.List;

@Entity(name = "orders")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Integer id;
    @OneToMany
    private List<Product> productList;
    private int  totalFiyat;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    public int getTotalFiyat() {
        return totalFiyat;
    }

    public void setTotalFiyat(int totalFiyat) {
        this.totalFiyat = totalFiyat;
    }
}

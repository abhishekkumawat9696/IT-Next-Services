package com.itnext.entities;


public class ProductDetail {
    
    private int pId;
    private String pNAme;
    private int pPrice;

    public ProductDetail() {
    }

    public ProductDetail(int pId, String pNAme, int pPrice) {
        this.pId = pId;
        this.pNAme = pNAme;
        this.pPrice = pPrice;
    }

    public ProductDetail(String pNAme, int pPrice) {
        this.pNAme = pNAme;
        this.pPrice = pPrice;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpNAme() {
        return pNAme;
    }

    public void setpNAme(String pNAme) {
        this.pNAme = pNAme;
    }

    public int getpPrice() {
        return pPrice;
    }

    public void setpPrice(int pPrice) {
        this.pPrice = pPrice;
    }
    
    
    
    
    
    
}

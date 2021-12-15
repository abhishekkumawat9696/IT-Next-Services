
package com.itnext.entities;


public class Contact {
    
    private int cId;
    private String name;
    private String phone;
    private String email;
    private String message;

    public Contact() {
    }

    public Contact(int cId, String name, String phone, String email, String message) {
        this.cId = cId;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.message = message;
    }
    
    
    public Contact(String name, String phone, String email, String message) {
        this.name = name;
        this.phone= phone;
        this.email = email;
        this.message = message;
    }

    public int getCId() {
        return cId;
    }

    public void setCId(int cId) {
        this.cId = cId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
    
}

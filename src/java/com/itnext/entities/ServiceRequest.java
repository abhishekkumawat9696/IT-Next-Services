
package com.itnext.entities;

import java.util.Date;


public class ServiceRequest {
    
    private int sid;
    private String name;
    private String email;
    private String phone;
    private String city;
    private String subject;
    private String aboutService;
    private String address;
    private String rDate;
    private String status;

    public ServiceRequest() {
    }

    public ServiceRequest(int sid, String name, String email, String phone, String city,String subject, String aboutService, String address, String rDate, String status) {
        this.sid = sid;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.city = city;
        this.subject = subject;
        this.aboutService = aboutService;
        this.address = address;
        this.rDate = rDate;
        this.status=status;
    }

    public ServiceRequest(String name, String email, String phone, String city, String subject, String aboutService, String address, String rDate,String status) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.city = city;
        this.subject = subject;
        this.aboutService = aboutService;
        this.address = address;
        this.rDate = rDate;
         this.status=status;
    }

    public ServiceRequest(int sid, String status) {
        this.sid = sid;
        this.status = status;
    }

    
    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAboutService() {
        return aboutService;
    }

    public void setAboutService(String aboutService) {
        this.aboutService = aboutService;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getrDate() {
        return rDate;
    }

    public void setrDate(String rDate) {
        this.rDate = rDate;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    
    
}

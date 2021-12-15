
package com.itnext.entities;

public class User {
    
    private int uid;
    private String name;
    private String phone;
    private String email;
    private String password;
    private String gender;
    private String about;
    private String authCode;

    public User() {
    }

    public User(int uid, String name, String phone, String email, String password, String gender, String about,String authCode) {
        this.uid = uid;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.about = about;
        this.authCode = authCode;
    }

    public User(String name, String phone, String email, String password, String gender, String about,String authCode) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.about = about;
        this.authCode = authCode;
    }

    public int getId() {
        return uid;
    }

    public void setId(int uid) {
        this.uid = uid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getAuthCode() {
        return authCode;
    }

    public void setAuthCode(String authCode) {
        this.authCode = authCode;
    }
    
    
    
}

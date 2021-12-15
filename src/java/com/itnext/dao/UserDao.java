/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itnext.dao;
import com.itnext.entities.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {


private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }   
    
    
    
    // method to insert database
    
    public boolean saveUser(User user)
    {
        boolean f=false;
        try
        {
            //user->Database
            
            String query="insert into users(name,phone,email,password,gender,about,authCode) values(?,?,?,?,?,?,?)";
            
            PreparedStatement pstmt=this.con.prepareStatement(query);
            
            pstmt.setString(1,user.getName());
            pstmt.setString(2,user.getPhone());
            pstmt.setString(3,user.getEmail());
            pstmt.setString(4,user.getPassword());
            pstmt.setString(5,user.getGender());
            pstmt.setString(6,user.getAbout());
            pstmt.setString(7,user.getAuthCode());

            pstmt.executeUpdate();
            f=true;
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    
    // get user by useremail and password
    public User getUserByEmailAndPassword(String email,String password)
    {
        User user=null;
        
        try
        {
            String query="Select * from users where email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1,email);
            pstmt.setString(2,password);
            
            ResultSet set= pstmt.executeQuery();
            if(set.next())
            {
                user=new User();
                //data from db
                String name=set.getString("name");
                //st to user object
                user.setName(name);
                user.setId(set.getInt("uid"));
                user.setPhone(set.getString("phone"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
               // user.setDateTime(set.getTimestamp("rdate"));
                
                
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return user;
    }

    
     public boolean updateUser(User user)
    {
        boolean f=false;
        try
        {
            String query="update users set name=?, phone=?, email=?, password=?, gender=?, about=? where uid=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1,user.getName());
            p.setString(2,user.getPhone());
            p.setString(3,user.getEmail());
            p.setString(4,user.getPassword());
            p.setString(5,user.getGender());
            p.setString(6,user.getAbout());
        
            p.setInt(7,user.getId());
         
            p.executeUpdate();
            f=true;
            
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
        
    }
    
    
     // get all users
    public  ArrayList<User> getAllUsers()
    {
         ArrayList<User> list=new ArrayList<>();
        
        try
        {
            String q="Select * from users order by uid desc";
             Statement st=this.con.createStatement();
            ResultSet set=st.executeQuery(q);
            while(set.next())
            {
                
                 int id=set.getInt("uid");
                String name=set.getString("name");
                String phone=set.getString("phone");
                String email=set.getString("email");
                String password=set.getString("password");
                String gender=set.getString("gender");
                String about=set.getString("about");
                String auth=set.getString("authCode");
               // user.setDateTime(set.getTimestamp("rdate"));
               
               User user=new User(id, name, phone, email, password, gender, about, auth);
                list.add(user);
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return list;
    }
    
   
}

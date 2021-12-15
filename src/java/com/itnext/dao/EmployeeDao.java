/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itnext.dao;

import com.itnext.entities.Employee;
import java.sql.*;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class EmployeeDao {
    
    
    private Connection con;

    public EmployeeDao(Connection con) {
        this.con = con;
    }

   
    public boolean saveEmployee(Employee emp)
    {
        boolean f=false;
        try
        {
            //user->Database
            
            String query="insert into Employee(name,phone,email,gender,address) values(?,?,?,?,?)";
            
            PreparedStatement pstmt=con.prepareStatement(query);
            
            pstmt.setString(1,emp.getName());
            pstmt.setString(2,emp.getPhone());
            pstmt.setString(3,emp.getEmail());
            
            pstmt.setString(4,emp.getGender());
            pstmt.setString(5,emp.getAddress());
            

            pstmt.executeUpdate();
            f=true;
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    
    
    
    
     public ArrayList<Employee> getAllEmployee()
    {
        ArrayList<Employee> list=new ArrayList<>();
        try{
            String q="select * from Employee";
            Statement st=this.con.createStatement();
            ResultSet set=st.executeQuery(q);
            
            while(set.next())
            {
                int eid=set.getInt("eid");
                String name=set.getString("name");
                  String phone=set.getString("phone");
                String email=set.getString("email");
                String gender=set.getString("gender");
                String address=set.getString("address");
              
                
                Employee e=new Employee(eid,name, phone, email, gender, address);
                list.add(e);
            }
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return list;
    }
 
     
      public boolean updateEmployee(Employee emp)
    {
        boolean f=false;
        try
        {
            String query="update Employee set name=?, phone=?, email=?, gender=?, address=? where eid=?";
            PreparedStatement p=con.prepareStatement(query);
            p.setString(1,emp.getName());
            p.setString(2,emp.getPhone());
            p.setString(3,emp.getEmail());
            p.setString(4,emp.getGender());
            p.setString(5,emp.getAddress());
        
            p.setInt(6,emp.getEid());
         
            p.executeUpdate();
            f=true;
            
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
        
    }
      public boolean deleteEmployee(Employee emp)
    {
        boolean f=false;
        try
        {
            String query="delete from Employee where eid=?";
            PreparedStatement p=con.prepareStatement(query);
           
          
            p.setInt(1,emp.getEid());
         
            p.executeUpdate();
            f=true;
            
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
        
    }

     
     
}

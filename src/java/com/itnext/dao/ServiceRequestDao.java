
package com.itnext.dao;

import com.itnext.entities.ServiceRequest;
import java.sql.*;
import java.util.ArrayList;

public class ServiceRequestDao {

Connection con;

    public ServiceRequestDao(Connection con) {
        this.con = con;
    }

public boolean saveServiceRequest(ServiceRequest sr)
    {
        boolean f=false;
        try{
            String q="insert into service_request(name,email,phone,city,subject,about_service,address,rDate,status) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pt=this.con.prepareStatement(q);
            pt.setString(1,sr.getName());
            pt.setString(2,sr.getEmail());
            pt.setString(3,sr.getPhone());
            pt.setString(4,sr.getCity());
            pt.setString(5,sr.getSubject());
            pt.setString(6,sr.getAboutService());
            pt.setString(7,sr.getAddress());
            pt.setString(8,sr.getrDate());
            pt.setString(9,sr.getStatus());
           
            pt.executeUpdate();
            f=true;
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return f;
    }



public ArrayList<ServiceRequest> getAllRequest()
    {
        ArrayList<ServiceRequest> list=new ArrayList<>();
        try{
            String q="select * from service_request";
            Statement st=this.con.createStatement();
            ResultSet set=st.executeQuery(q);
            
            while(set.next())
            {
                int sid=set.getInt("sid");
                String name=set.getString("name");
                String email=set.getString("email");
                String phone=set.getString("phone");
                String city=set.getString("city");
                String subject=set.getString("subject");
                String about_service=set.getString("about_service");
                String address=set.getString("address");
                String requestDate=set.getString("rdate");
                String status=set.getString("status");
                
                ServiceRequest c=new ServiceRequest(sid, name, email, phone, city, subject, about_service, address, requestDate,status);
                list.add(c);
            }
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        
        return list;
    }


//update
    public void saveServiceRequestUpdate(int sid ,String ss)
    {
       // boolean f=false;
        try{
            String q="update service_request set status=? where sid=?";
            PreparedStatement pt=this.con.prepareStatement(q);
          
            pt.setString(1,ss);
            pt.setInt(2,sid);
           
            pt.executeUpdate();
            //f=true;
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
       // return f;
    }







}




package com.itnext.dao;
import com.itnext.entities.Contact;
import java.sql.*;
import java.util.ArrayList;

public class ContactDao {
    
    Connection con;

    public ContactDao(Connection con) {
        this.con = con;
    }
    
    public boolean saveContact(Contact contact)
    {
        boolean f=false;
        try{
            String q="insert into contact(name,phone,email,message) values(?,?,?,?)";
            PreparedStatement pt=this.con.prepareStatement(q);
            pt.setString(1,contact.getName());
            pt.setString(2,contact.getPhone());
            pt.setString(3,contact.getEmail());
            pt.setString(4,contact.getMessage());
           
            pt.executeUpdate();
            f=true;
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return f;
    }
    
    public ArrayList<Contact> getAllContact()
    {
        ArrayList<Contact> list=new ArrayList<>();
        try{
            String q="select * from contact";
            Statement st=this.con.createStatement();
            ResultSet set=st.executeQuery(q);
            
            while(set.next())
            {
                int cid=set.getInt("cid");
                String name=set.getString("name");
                  String phone=set.getString("phone");
                String email=set.getString("email");
                String message=set.getString("message");
              
                
                Contact c=new Contact(cid, name, phone, email, message);
                list.add(c);
            }
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        
        return list;
    }

      public boolean deleteContact(Contact emp)
    {
        boolean f=false;
        try
        {
            String query="delete from contact where cid=?";
            PreparedStatement p=con.prepareStatement(query);
           
          
            p.setInt(1,emp.getCId());
         
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

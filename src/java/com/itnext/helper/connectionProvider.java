
package com.itnext.helper;

import java.sql.*;


public class connectionProvider {

    private static Connection con;
    
    public static Connection getConnection()
    {
        try{
            
           if(con == null)
           {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
                 con = java.sql.DriverManager.getConnection
                 ("jdbc:sqlserver://localhost:1433;user=abhishek;password=9828132618;"+"databaseName=ItNext");
           }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}

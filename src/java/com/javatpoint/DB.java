package com.javatpoint;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;  
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
     * and open the template in the editor.
 */

/**
 *
 * @author ahmed
 */
public class DB {
    String Name="root";
    String password="";
    String url="jdbc:mysql://localhost:3306/project";
    Connection connection=null;
    public boolean Connection() throws ClassNotFoundException, SQLException
    {
        Class.forName("org.gjt.mm.mysql.Driver");
        connection = DriverManager.getConnection(url,Name,password);
        if(connection!=null)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public ResultSet Make_Read_Query(String Query) throws SQLException
    {
        Statement statement = connection.createStatement();
        ResultSet resultset = statement.executeQuery(Query);
        return resultset;
    }
    public boolean Make_Update_Query(String Query)throws SQLException
    {
        Statement statement = connection.createStatement();
        statement.executeUpdate(Query);
        return true;
    }
}
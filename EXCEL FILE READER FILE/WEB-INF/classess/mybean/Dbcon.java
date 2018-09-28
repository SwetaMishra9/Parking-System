/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mybean;

import java.io.PrintStream;
import java.sql.*;

public class Dbcon
{

    public Dbcon()
    {
        con = null;
        st = null;
        rs = null;
        i = 0;
        connectionURL = "jdbc:mysql://localhost:3306/childdms";
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        }
        catch(Exception exception)
        {
            System.out.println(exception);
        }
    }

    public void mkcon()
    {
        try
        {
            con = DriverManager.getConnection(connectionURL, "root", "admin");
            st = con.createStatement();
            System.out.println(con);
        }
        catch(Exception exception)
        {
            System.out.println(exception);
        }
    }

    public int dbupdate(String s)
    {
        try
        {
            i = st.executeUpdate(s);
        }
        catch(Exception exception)
        {
            System.out.println(exception);
        }
        return i;
    }

    public ResultSet fetch(String s)
    {
        try
        {
            rs = st.executeQuery(s);
        }
        catch(Exception exception)
        {
            System.out.println(exception);
        }
        return rs;
    }

    Connection con;
    Statement st;
    ResultSet rs;
    int i;
    String connectionURL;
}
package mybean;

import java.io.PrintStream;
import java.sql.*;

public class Dbcon
{

    Connection con;
    Statement st;
    ResultSet rs;
    int i;
    String connectionURL;

    public Dbcon()
    {
        con = null;
        st = null;
        rs = null;
        i = 0;
        connectionURL = "jdbc:mysql://localhost:3306/parking_system";
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(connectionURL, "root", "admin");
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void mkcon()
    {
        try
        {
            if(con == null)
            {
                con = DriverManager.getConnection(connectionURL, "root", "admin");
            }
            st = con.createStatement();
            System.out.println(con);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public int dbupdate(String s)
    {
        try
        {
            if(st == null)
            {
                st = con.createStatement();
            }
            i = st.executeUpdate(s);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        return i;
    }

    public ResultSet fetch(String s)
    {
        ResultSet rs = null;
        try
        {
            if(st == null)
            {
                st = con.createStatement();
            }
            rs = st.executeQuery(s);
        }
        catch(Exception exception)
        {
            System.out.println(exception);
            exception.printStackTrace();
        }
        return rs;
    }

    public Connection getcon()
    {
        try
        {
            con = DriverManager.getConnection(connectionURL, "root", "admin");
        }
        catch(Exception exception)
        {
            System.out.println(exception);
            exception.printStackTrace();
        }
        return con;
    }
}

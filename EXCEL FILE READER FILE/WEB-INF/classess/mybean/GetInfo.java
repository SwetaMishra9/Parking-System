
package mybean;

import java.io.PrintStream;
import java.sql.ResultSet;

// Referenced classes of package mybean:
//            Dbcon

public class GetInfo
{

    Dbcon db;
    ResultSet rs;
    String getDistrict,getBlock,getPanchyat;
    int getDMSRcv;

    public GetInfo()
    {
        db = new Dbcon();
        rs = null;
        
        getDistrict=getBlock=getPanchyat="";
        getDMSRcv=0;
    }

    public String getDistrict(String dist)
    {
        try
        {
            db.mkcon();
            rs = db.fetch("select district_name from district where district_id_pk='"+dist+"'");
           
            if(rs.next())
            {
                getDistrict = rs.getString(1);
            }
        }
        catch(Exception e)
        {
            System.out.println("db error");
        }
        return getDistrict;
    }

    public String getBlock(String blk)
    {
        try
        {
            db.mkcon();
            rs = db.fetch("select block_name from block where block_id_pk='"+blk+"'");
            if(rs.next())
            {
                getBlock = rs.getString(1);
            }
        }
        catch(Exception e)
        {
            System.out.println("db error");
        }
        return getBlock;
    }

    public String getPanchyat(String pan)
    {
        try
        {
            db.mkcon();
            rs = db.fetch("select Panchyat_name from panchyat where panchyat_id_pk='"+pan+"'");
            if(rs.next())
            {
                getPanchyat = rs.getString(1);
            }
        }
        catch(Exception e)
        {
            System.out.println("db error");
        }
        return getPanchyat;
    }

    public int getDMSRcv(String stationId)
    {
        try
        {
            db.mkcon();
            rs = db.fetch("select sum(noOfDMS) from receivedms where stationId like '%' '"+stationId+"' '%'");
            if(rs.next())
            {
                getDMSRcv = rs.getInt(1);
            }
        }
        catch(Exception e)
        {
            System.out.println("db error");
        }
        return getDMSRcv;
    }
}

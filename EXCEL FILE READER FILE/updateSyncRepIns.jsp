<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>

<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFSheet"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFWorkbook"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFRow"%>
<%@page import="org.apache.poi.hssf.usermodel.HSSFCell"%>
<%-- 
    Document   : updateSyncRepIns
    Created on : Mar 31, 2016, 4:08:37 PM
    Author     : CSC
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>

<!DOCTYPE html>
<jsp:useBean id="db" class="mybean.Dbcon"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
     
     Date cdate = new Date();
     SimpleDateFormat sdf  = new SimpleDateFormat("yyyy-MM-dd");
     String entryDate = sdf.format(cdate);
       
         String usrname=(String)session.getAttribute("username");
    if(usrname==null){
        response.sendRedirect("index.html");
    }
                else{
                    db.mkcon();
                    ResultSet rs= db.fetch("select * from syncreportday where entryDate='"+entryDate+"'");
                    if(rs.next()){
                        out.println("Todays's Sync Report Updated");
                    }
                    else{
                        
                        int upd=db.dbupdate("delete from syncreportday");
                        //if(upd>0){
                            
                    
                    System.out.println("Inserting Excel Data");
                    
                    out.println("Inserting Excel Data");
                    
                    int instd=0;
                    
                    short a=0;short b=1;short c=2;short d=3;short e=4;
                    double dateDay=0.0;
                    double dateMon=0.0;
                    double dateYer=0.0;
                    double station=0.0;
                    double totalenrol=0.0;
                    int i=0;int n=0;
                    String cellHeading="";
                    
                    String filnam=request.getParameter("SyncFile");
                    
                    out.println("<br>File Name in Inserting page............"+filnam);
                    System.out.println("File Name in Inserting page............"+filnam);
                    
                    String filename=getServletContext().getRealPath("/")+"sinkReport/"+filnam;
                    
                    System.out.println(filename);
                    
                    if (filename != null && !filename.equals("")){
                        try{
    FileInputStream fs =new FileInputStream(filename);
    HSSFWorkbook wb = new HSSFWorkbook(fs);
    for (int l = 0; l < wb.getNumberOfSheets(); l++)
	{
        int j=i+1;
		
		HSSFSheet sheet = wb.getSheetAt(l);
		int rows = sheet.getPhysicalNumberOfRows();
		for (int m = 0; m <1; m++)
		{
		   HSSFRow row = sheet.getRow(m);
		   int cells = row.getPhysicalNumberOfCells(); 
		   
		   HSSFCell cell1 = row.getCell(a);
		   cellHeading = cell1.getStringCellValue();
		   
		   if(cellHeading.equals("Enrolment Station ID"))
		   {
		      //out.print("Valus R Same");
			  for (int k = 0; k < wb.getNumberOfSheets(); k++)
			  {
			     int o=n+1;
				 HSSFSheet sheet1 = wb.getSheetAt(k);
				 int rows1 = sheet1.getPhysicalNumberOfRows();
                                 System.out.println("No of Row........"+rows1);
				 for (int r = 1; r < rows1; r++)
				 {
				    HSSFRow row1 = sheet1.getRow(r);
					
					HSSFCell cell11 = row1.getCell(a);
                                        station = cell11.getNumericCellValue();
                                        
					HSSFCell cell12 = row1.getCell(b);
                                        dateDay = cell12.getNumericCellValue();
                                        
					HSSFCell cell13 = row1.getCell(c);
                                        dateMon = cell13.getNumericCellValue();
                                        
					HSSFCell cell14 = row1.getCell(d);
                                        dateYer = cell14.getNumericCellValue();
                                        
					HSSFCell cell15 = row1.getCell(e);
                                        totalenrol = cell15.getNumericCellValue();
                                        
                                        int ins=db.dbupdate("insert into syncreportday values('"+station+"','"+dateDay+"','"+dateMon+"','"+dateYer+"','"+totalenrol+"','"+entryDate+"')");
                                        if(ins>0){
                                            instd++;
                                        }
                                        
                                        if(instd==rows1-1){
                                            response.sendRedirect("VLEDMSRequ.jsp");
                                        }
                                        
                                        out.println("<br>Station Id...>"+station+"<....>"+dateDay);
                                        
                                 }
                          }
                   }
                }
        }
                            
                            
                        }catch(Exception ex){
                            System.out.println(ex);
                        }
                    }
                    //}
                    }
                }
            }
            catch(Exception e){
                System.out.println("Exception............."+e);
            }
        %>
    </body>
</html>

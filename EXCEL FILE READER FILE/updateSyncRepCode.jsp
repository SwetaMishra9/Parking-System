<%-- 
    Document   : updateSyncRepCode
    Created on : Mar 30, 2016, 10:54:43 PM
    Author     : CSC
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<jsp:useBean id="db" class="mybean.Dbcon"/>

<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
    String usrname=(String)session.getAttribute("username");
    if(usrname==null){
        response.sendRedirect("index.html");
    }
                else{
                    db.mkcon();
                  String NewFile = null;
                  boolean isMultiPart = ServletFileUpload.isMultipartContent(request);
                 if (!isMultiPart){
                        out.println("Form Not Multipart");
                    }
                 else{
                        FileItemFactory factory = new DiskFileItemFactory();
                        ServletFileUpload upload = new ServletFileUpload(factory);
                        List items = null;
                        try{
                            items = upload.parseRequest(request);
                        }
                        catch (FileUploadException e){
                            e.printStackTrace();
                            //out.print("<br>Exception = "+e);
                            }
                        Iterator itr = items.iterator();
                        while (itr.hasNext()){
                            FileItem item = (FileItem) itr.next();
                            if (item.isFormField()){
                                String name = item.getFieldName();
                                out.println("<br>name: "+name);
                                String value = item.getString();
                                out.println("<br>value: "+value);
                                 }//while(if)
                            else{
                                try{
                                     int sl_no=0;
                                    
                                    String itemName = item.getName();
                                    File savedFile = new File(config.getServletContext().getRealPath("/")+"sinkReport/"+itemName);
                                    item.write(savedFile);
                                    NewFile=itemName;
                                    out.print("<br>File Name = "+NewFile);
                                    System.out.print("<br>File Name = "+NewFile);
                                    
                                    //session.setAttribute("SyncFile", NewFile);
                                    
                                    response.sendRedirect("updateSyncRepIns.jsp?SyncFile="+NewFile);
                                    }//try(else)
                                catch (Exception e){
                                    e.printStackTrace();
                                    out.print("<br>"+e);
                                    System.out.print("<br>"+e);
                                }
                                //i++;
                            }//while(else)
                        }
                    }
                }
            }
            catch(Exception e){
                System.out.println("Exception............."+e);
            }
        %>
    </body>
</html>

<%@page import="java.sql.ResultSet"%>
<%-- 
    Document   : updateSyncReport
    Created on : Mar 30, 2016, 9:53:17 PM
    Author     : CSC
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<jsp:useBean id="db" class="mybean.Dbcon"/>
<html>
    <head>
        <script language="javascript">
            function check_formet()
            {
              var item = document.frm.file.value; 
              var lastItem = itm.split("\\").pop(-1);
              
              var n_val = lastItem.split(".").pop(-1);
              if(n_val=="xls")
              {
              }
              else{
                  alert("Please Upload 20003 Excel File Only");
                  return false;
                  }  
            }
            
            </script>
            <style>
                
            </style>
        
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
        String dmsNo=request.getParameter("nodmsreq");
        %>
         <form name="frm" method="post" autocomplete="off" onSubmit="return check_formet();" enctype="multipart/form-data" action="updateSyncRepCode.jsp">
        <table width="400" border="1">
            <tr><th colspan="4" style="text-align: center;">UIDAI Sink Report Update of <%=dmsNo%></th></tr>
            <tr>
                <th>Upload Excel File</th><td><input type="file" name="file" /></td>
            </tr>
            <tr>
                <th colspan="2"><input type="submit" value="Upload" /></th>
            </tr>
        </table>
        </form>
                        <%
        
            }
            }
        catch(Exception e){
            System.out.println("Exception............."+e);
        }%>
      
    </body>
</html>

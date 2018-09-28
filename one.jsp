
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="db" class="mybean.Dbcon" />
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
 <script type="text/ecmascript" src="js/datetimepicker_css.js"></script>
</head>

<%
  db.mkcon();
  String flr=request.getParameter("flr");
  String rom=request.getParameter("rom");
  
 // out.println(""+flr+"............"+rom);
 
 out.println("<h4>Please Select Floor Number and Room number<br /> from Dashboard</h4>");
  
 out.println("Floor No:"+flr+"<br /> Room No:"+rom);
  
  //response.sendRedirect("oneupd.jsp");


%>
<body text="#3300FF">


<form name="frm" method="post" action="oneupd.jsp" >
<table border="0" cellpadding="3" cellspacing="3" bgcolor="#FFFFFF" >
<tr><th colspan="2"><u>Form For parking reservation</u></th></tr>
<tr><th>Coustomer Name:-</th><th><input type="text" name="nme" value=""></th></tr>
<tr><th>Car No.</th><th><input type="text" name="carno" value=""></th></tr>
<!--<tr><th>Date and Time:-</th><th><a href="javascript:NewCssCal('date','yyyyMMdd','dropdown',true)"><input type="text" name="date" id="date" value=""><img src="cal.gif"></a>
</th></tr>
-->
<tr><th>Date and Time:-</th><th><input type="date" name="date" id="date" value="" style="width:165px"></th></tr>
<input type="text" name="fno" value="<%=flr%>" style="display:none"></th>
<input type="text" name="romno" value="<%=rom%>" style="display:none">

<tr style="height:30px"><th colspan="2"><center><input type="submit" name="in" value="IN" style="width:100px">
<input type="submit" name="in" value="OUT" style="display:none;"></center></th></tr>
</table>
</form>

</body>
</html>

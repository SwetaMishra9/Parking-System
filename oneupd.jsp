
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<jsp:useBean id="db" class="mybean.Dbcon" />
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
<%
  db.mkcon();
  String flr=request.getParameter("fno");
  String rom=request.getParameter("romno");
  String name=request.getParameter("nme");
  String carno=request.getParameter("carno");
  String cdate=request.getParameter("dat");
 //out.println("..."+flr+"..."+rom+"..."+name); 
  
  Random rand=new Random();
     int pick=rand.nextInt(100)+1;
      int newpick=pick+1;
	  
	  String tokn="TKN"+newpick;
 //out.println(tokn);
 
 
	int upd=db.dbupdate("update parking set "+rom+"='1' where floar='"+flr+"' and "+rom+"='0'");
	out.println("Your Token Number is  "+tokn+"<br/> Coustomer Name  :-"+name+"<br/> Floar No:-"+flr+"<br /> Room No:-"+rom);
	
	//response.sendRedirect("one.jsp");
 

%>
</body>
</html>


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
</head>
<body>
<%
  db.mkcon();
  String flr=request.getParameter("flr");
  String rom=request.getParameter("rom");
  
  out.println(""+flr+"............"+rom);
  
  response.sendRedirect("oneupd.jsp");


%>
</body>
</html>

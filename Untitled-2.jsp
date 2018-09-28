
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
<%
  db.mkcon();
  String flr=request.getParameter("fno");
  String rom=request.getParameter("romno");
%>
<body>
<table bgcolor="#CCCCCC">
<tr><th>Your Token no.</th><th><input type="text" name="tokn" value=""><input type="hidden" name="flr" value="<%=flr%>"><input type="hidden" name="room" value="<%=rom%>"></th></tr>
<tr><th><center><input type="submit" name="out" value="OUT"></center></th></tr>
</table>
</body>
</html>

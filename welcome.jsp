<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,java.io.*"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="db" class="mybean.Dbcon" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Parking System</title>
<style>
body
{
background-color:#00CCFF;
 
}
</style>
</head>
<body>
<div id="b" style="width:1000px; height:1000px; float:right">

<table border="0" cellpadding="2" cellspacing="2">
<tr bgcolor="#663366"><th>Floar no.</th><th>room no1</th><th>room no2</th><th>room no3</th><th>room no4</th><th>room no5</th><th>room no6</th>
<th>room no7</th><th>room no8</th><th>room no9</th><th>room no10</th><th>room no11</th><th>room no12</th><th>room no13</th>
<th>room no14</th><th>room no15</th><th>room no16</th><th>room no17</th></tr>
<%
  db.mkcon();
  //int a=0;
  ResultSet rs=db.fetch("select * from parking");
  while(rs.next())
  {
    String floar=rs.getString(1);
     %>
	<tr>
    <td bgcolor="pink"><%=floar%></td>
    <%
    int a=rs.getInt(2);
	if(a==0)
	{
	 %> 
     <td><a href="one.jsp?flr=<%=floar%>&rom=<%=a%>" target="new"><img src="orange.png" width="58" height="20" /></a></td>
	<%}
    
	else
	{
	%>
    <td><img src="green.png" width="58" height="20" ></td>
    
    <%}%>
    <%
    int b=rs.getInt(3);
	if(b==0)
	{
	 %> 
     <td><a href="one.jsp?flr=<%=floar%>&rom=<%=b%>" target="new"><img src="orange.png" width="58" height="20" ></a></td>
	<%}
    
	else
	{
	%>
    <td><img src="green.png" width="58" height="20" ></td>
    
    <%}%>
    <%
    int c=rs.getInt(4);
	if(c==0)
	{
	 %> 
     <td><a href="one.jsp?flr=<%=floar%>&rom=<%=c%>" target="new"><img src="orange.png" width="58" height="20" ></a></td>
	<%}
    
	else
	{
	%>
    <td><img src="green.png" width="58" height="20" ></td>   
     <%}
    int d=rs.getInt(5);
	if(d==0)
	{
	 %> 
     <td><a href="one.jsp?flr=<%=floar%>&rom=<%=d%>" target="new"><img src="orange.png" width="58" height="20" ></a></td>
	<%}
    
	else
	{
	%>
    <td><img src="green.png" width="58" height="20" ></td>
    
     <%}
   %>
    </tr>
    
<%}%>
</table>
</div>

</body>
</html>

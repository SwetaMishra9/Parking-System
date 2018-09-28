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
background-color:LightCyan;
 
}
</style>
</head>
<body>
<a href="carparking.jsp"><input type="button" value="Refresh"></a>
<table border="0" cellpadding="2" cellspacing="2">
<tr bgcolor="PaleGoldenRod"><th>Floar no.</th><th>room no1</th><th>room no2</th><th>room no3</th><th>room no4</th><th>room no5</th><th>room no6</th><th>room no7</th><th>room no8</th><th>room no9</th><th>room no10</th><th>room no11</th>
</tr>
<%
  db.mkcon();
  //int a=0;
  ResultSet rs=db.fetch("select * from parking");
  while(rs.next())
  {
    String floar=rs.getString(1);
     %>
	<tr>
    <td><%=floar%></td>
    <td><%
     int a=rs.getInt(2);
	if(a==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r1" target="new"><img src="green.png" title="Move In" width="58" height="20" /></a>
	<%}
    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r1" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    
    <%}%></td><td>
    <%
    int b=rs.getInt(3);
	if(b==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r2" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}
    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r2" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    
    <%}%></td><td>
    <%
    int c=rs.getInt(4);
	if(c==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r3" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}
    
	else
	{
	%>
   <a href="out.jsp?flr=<%=floar%>&rom=r3" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a> 
     <%}%></td><td><%
    int d=rs.getInt(5);
	if(d==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r4" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}
    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r4" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    
     <%}%></td><td><%
    int e=rs.getInt(6);
	if(e==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r5" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}
    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r5" target="new"><img src="orange.png" title="Move Out" width="58" height="20"></a>
    
     <%}%></td>
     <td><%
    int f=rs.getInt(7);
	if(f==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r6" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r6" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    <%}%></td><td><%
	int g=rs.getInt(8);
	if(g==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r7" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r1" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    <%}%></td>
    <td><%
	int h=rs.getInt(9);
	if(h==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r8" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}
    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r8" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    <%}%></td>
    <td><%
	int i=rs.getInt(10);
	if(i==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r9" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}    
	else
	{
	%>
      <a href="out.jsp?flr=<%=floar%>&rom=r9" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    <%}%>
    </td><td><%int j=rs.getInt(11);
	if(j==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=10" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}
    
	else
	{
	%>
      <a href="out.jsp?flr=<%=floar%>&rom=r10" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    <%}%></td>
	<td><%
	int k=rs.getInt(12);
	if(k==0)
	{
	 %> 
     <a href="one.jsp?flr=<%=floar%>&rom=r11" target="new"><img src="green.png" title="Move In" width="58" height="20" ></a>
	<%}
    
	else
	{
	%>
    <a href="out.jsp?flr=<%=floar%>&rom=r11" target="new"><img src="orange.png" title="Move Out" width="58" height="20" ></a>
    <%} 
	%></td>
    </tr>
    <%}%>
</table>

</body>
</html>

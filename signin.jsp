<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
session.putValue("name",name);
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","harshidha");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from login where name='"+name+"'and password='"+password+"'");
try{
rs.next();
if(rs.getString("name").equals(name) &&rs.getString("password").equals(password))
{
out.println("Welcome " +name);
out.println("Thank you for Logining in !<a href='about.html'>about</a>");

}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>

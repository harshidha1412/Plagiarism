<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("name");

String email=request.getParameter("mail");
 
 String password=request.getParameter("password");
 String rolep=request.getParameter("role");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "harshidha");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into user.login(name,mail,password,role)values('"+fname+"','"+email+"','"+password+"','"+rolep+"')");

out.println("Thank you for register ! Please <a href='login.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

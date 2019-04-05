<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
     <%@page import="javax.servlet.*"%>
 <%@page import="java.sql.*"%>    
<%@page import="javax.sql.*"%>
<%@page import="java.util.*"%>
<%


String fname=request.getParameter("fname");     
String mail=request.getParameter("mail");  
String pwd=request.getParameter("pwd");  


	Connection conn=null;
	String query="";
	Statement st=null;
	ResultSet rs=null;
	try{
       	
       	Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","komal");
		st = con.createStatement();
		out.println("connection done..");

		
	}
	catch(Exception e){
		out.println("Error +"+e.getMessage());
		out.println(" error :"+e);
	}
	query="insert into details(fname,pwd,mail) values('"+fname+"','"+pwd+"','"+mail+"')";

     st.executeUpdate(query);
  	out.println("data inserted");
  	out.println("submitted");
%>


<%@ page contentType="text/html; charset=gb2312" %> 
<%@ page language="java" %> 
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<% 
//���������� 
String driverName="com.mysql.jdbc.Driver"; 
//���ݿ��û��� 
String userName="root"; 
//���� 
String userPasswd="root"; 
//���ݿ��� 
String dbName="seboomer"; 
//���� 
String tableName="users"; 
//�����ַ��� 
String input=request.getParameter("username");
String input2=request.getParameter("password");
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement(); 
String sql = "insert into "+tableName+"(username,password) values('"+input+"','"+input2+"')";
System.out.println(sql);
PreparedStatement ps = null;
	Statement stmt = connection.createStatement();  
	ps = connection.prepareStatement(sql);
	int a = ps.executeUpdate();
stmt.close();  
%> 
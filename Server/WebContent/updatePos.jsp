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
String tableName="roomdata"; 
//�����ַ��� 
String input=request.getParameter("roomid");
String input2=request.getParameter("userid");
String input3=request.getParameter("opos");
String input4=request.getParameter("pos");
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement();
String sql = "update "+tableName+" set pos_"+input3+"=0 ,pos_"+input4+"="+input2+" where id="+input;
System.out.println(sql);
PreparedStatement ps = null;
Statement stmt = connection.createStatement();  
ps = connection.prepareStatement(sql);
int a = ps.executeUpdate();
stmt.close();  
%> 
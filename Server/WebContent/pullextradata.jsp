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
String dbName="test"; 
//���� 
String tableName="usermessage"; 
//�����ַ��� 
String userid=request.getParameter("userid");
String date=request.getParameter("date");
String time=request.getParameter("time");
String ans;
out.print(ans);  //�����������Ϣ
System.out.println(ans);


%> 
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
String input=request.getParameter("userid");
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement(); 
String sql="SELECT * FROM "+tableName +" where id= "+input;

ResultSet rs = statement.executeQuery(sql); 
//������ݽ������ 
ResultSetMetaData rmeta = rs.getMetaData(); 
//ȷ�����ݼ������������ֶ��� 
int numColumns=rmeta.getColumnCount(); 
// ���ÿһ������ֵ 
String ans="";
if(rs.next()) {
	ans+=rs.getString("avatar")+" "+rs.getString("exp")+" "+rs.getString("emotion");
} 
else{ 
	out.print(-1);
}
out.print(ans);
System.out.println(ans);

rs.close(); 
statement.close(); 
connection.close(); 
%> 
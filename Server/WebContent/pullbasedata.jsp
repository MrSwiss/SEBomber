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
String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd; 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
Connection connection=DriverManager.getConnection(url); 
Statement statement = connection.createStatement();
String sql="select * from "+tableName+" where date="+"'"+date+"' and time='"+time+"'";
System.out.println(sql);
ResultSet rs = statement.executeQuery(sql); 
//������ݽ������ 
ResultSetMetaData rmeta = rs.getMetaData(); 
//ȷ�����ݼ������������ֶ��� 
int numColumns=rmeta.getColumnCount(); 
// ���ÿһ������ֵ
String ans="";
while(rs.next()) {
	ans+="longitude "+rs.getString("longitude")+" "+
			"latitude " +rs.getString("latitude")+" "+
			"acceleration_x "+rs.getString("acceleration_x")+" "+
			"acceleration_y "+rs.getString("acceleration_y")+" "+
			"acceleration_z "+rs.getString("acceleration_z")+" "+
			"magnetic_x "+rs.getString("magnetic_x")+" "+
			"magnetic_y "+rs.getString("magnetic_y")+" "+
			"magnetic_z "+rs.getString("magnetic_z")+" "+
			"pressure "+rs.getString("pressure")+" "+
			"light_intensity "+rs.getString("light_intensity")+" "+
			"wifi_name "+rs.getString("wifi_name")+" "+
			"wifi_signal "+rs.getString("wifi_signal")+" "+
			"wifi_mac "+rs.getString("wifi_mac")+"  ";
} 
out.print(ans);
System.out.println(ans);

rs.close(); 
statement.close(); 
connection.close(); 

%> 
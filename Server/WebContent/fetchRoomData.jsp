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
	ans+=rs.getString("pos_1")+" "+rs.getString("pos_2")+" "+rs.getString("pos_3")+" "+rs.getString("pos_4")+" "+rs.getString("pos_5")+" "+rs.getString("pos_6")+" "+rs.getString("pos_7")+" "+rs.getString("pos_8");
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
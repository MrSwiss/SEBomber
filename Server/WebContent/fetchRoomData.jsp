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
	ans+=""+(char)(rs.getInt("pos_1")+'a')+(char)(rs.getInt("pos_2")+'a')+(char)(rs.getInt("pos_3")+'a')+(char)(rs.getInt("pos_4")+'a')+(char)(rs.getInt("pos_5")+'a')+(char)(rs.getInt("pos_6")+'a')+(char)(rs.getInt("pos_7")+'a')+(char)(rs.getInt("pos_8")+'a');
	ans+=""+(char)(rs.getInt("hero_1")+'a')+(char)(rs.getInt("hero_2")+'a')+(char)(rs.getInt("hero_3")+'a')+(char)(rs.getInt("hero_4")+'a')+(char)(rs.getInt("hero_5")+'a')+(char)(rs.getInt("hero_6")+'a')+(char)(rs.getInt("hero_7")+'a')+(char)(rs.getInt("hero_8")+'a');
	ans+=""+(char)(rs.getInt("team_1")+'a')+(char)(rs.getInt("team_2")+'a')+(char)(rs.getInt("team_3")+'a')+(char)(rs.getInt("team_4")+'a')+(char)(rs.getInt("team_5")+'a')+(char)(rs.getInt("team_6")+'a')+(char)(rs.getInt("team_7")+'a')+(char)(rs.getInt("team_8")+'a');
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
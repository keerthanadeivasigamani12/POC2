<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/hotelroom";
String userid = "root";
String password = "Keerthi@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body background="https://th.bing.com/th/id/R.a2372f6deacf24c9da826ddc6d0e7ff0?rik=o3vptlLwNI6Mtw&riu=http%3a%2f%2fwallpapersdsc.net%2fwp-content%2fuploads%2f2016%2f10%2fSunset-HD.jpg&ehk=ZlF9W%2bVKWFaiCid0LPPaJ9OzNVtmJCz25aLwSiX%2fGZo%3d&risl=&pid=ImgRaw&r=0" link="#000" alink="#017bf5" vlink="#000">

<h1>Hotel Room Details</h1>
<table border="1">
<tr>
<td>Room number</td>
<td>Room type</td>

</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelroom","root","Keerthi@123");
statement=connection.createStatement();
String sql ="SELECT * FROM hotel.hotelroom";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Roomnumber") %></td>
<td><%=resultSet.getString("Roomtype") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
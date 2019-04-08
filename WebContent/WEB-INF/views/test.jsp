<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "osfu";
String password = "12345678";
String driverName = "oracle.jdbc.driver.OracleDriver";
try {
	Class.forName(driverName);
	Connection con = DriverManager.getConnection(url,user,password);
	String sql = "select * from address where ad_num<=100 order by ad_num";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	out.println("AD_NUM\t | \t AD_CODE");
	while(rs.next()) {
		out.println(rs.getString("ad_num") + "\t | \t " + rs.getString("ad_code")); 
	}
} catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();
}
%>
</body>
</html>
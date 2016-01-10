<%@page import="java.sql.*"%>
<html>
<body>
	<p>Eureka</p>
	<%
		Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://sql6.freemysqlhosting.net:3306/sql6102184",
			"sql6102184", "7VTgwzTDbv");

			Statement stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery("select * from user");

			while (rs.next())
			System.out.println(rs.getInt(1) + "  " + rs.getString(4));
			con.close();
	%>
</body>
</html>
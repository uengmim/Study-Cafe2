<%
Class.forName("org.gjt.mm.mysql.Driver");

conn = DriverManager.getConnection("jdbc:mysql://localhost:3306;databasename=mysql21;user=root;password=kbc0924;");
%>
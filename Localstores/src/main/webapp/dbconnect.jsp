<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
	<head>
		<title>Show all Stores</title>
                
	</head>
<body>
 
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     		url="jdbc:mysql://localhost:3306/location"
     		user="root"  password="1234"/>
 
	<sql:query dataSource="${snapshot}" var="result">


SELECT * from users;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Store Name</th>
   <th>Address</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.user}"/></td>
   <td><c:out value="${row.address}"/></td>
   
</tr>
</c:forEach>
</table>
 
</body>
</html>

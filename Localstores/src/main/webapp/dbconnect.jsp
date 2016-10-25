<%-- 
    Document   : dbconnect
    Created on : 25 ??? 2016, 11:04:10 ??
    Author     : ????????
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
	<head>
		<title>SELECT Operation</title>
	</head>
<body>
 
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     		url="jdbc:mysql://localhost/Location"
     		user="root"  password="pass123"/>
 
	<sql:query dataSource="${snapshot}" var="result">


SELECT * from shop;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>shopID</th>
   <th>address</th>
   <th>shopName</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.shop_id}"/></td>
   <td><c:out value="${row.address}"/></td>
   <td><c:out value="${row.shop_name}"/></td>
   
</tr>
</c:forEach>
</table>
 
</body>
</html>

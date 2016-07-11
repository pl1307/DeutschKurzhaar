<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 
<html>
<head>
<title>SELECT Operation</title>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/world"
     user="root"  password="DeutschKurzhaar"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from city;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>ID</th>
   <th>Name</th>
   <th>CountryCode</th>
   <th>District</th>
   <th>Population</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.countrycode}"/></td>
   <td><c:out value="${row.district}"/></td>
   <td><c:out value="${row.population}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>
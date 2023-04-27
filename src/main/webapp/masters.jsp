<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Masters" %>



<%
Masters r1 = new Masters(1l, "Johnny Loyd", "Web Developer", "89516543467");
Masters r2 = new Masters(2l, "Lilly Roberson", "Artist", "89084242657");
Masters r3 = new Masters(3l, "Jasmine Jordan", "Photographer", "89506518235");
Masters[] masters = new Masters[]{r1, r2, r3};
int length = masters.length;
pageContext.setAttribute("masters", masters);
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"
charset="UTF-8">
<a href="/persons10lab/">
<img alt="logo" id="top-image" src="https://d3wo5wojvuv7l.cloudfront.net/t_square_limited_720/images.spreaker.com/original/4d903020ec7724d9c75dbff61b1963a7.jpg">
</a>
<title>Masters</title>
</head>
<body>
<jsp:include page="/jspf/header.jsp" />
<div id="main">
<h2>Masters</h2>
<table>
		<thead>
		<tr>
		            <th scope="col" >Id</th>
            <th scope="col">Master name</th>
            <th scope="col">position</th>
            <th scope="col">phone</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="master" items="${masters}">
		<tr>
		                <td >${master.getId()}</td>
                <td >${master.getMasterName()}</td>
                <td >${master.getPosition()}</td>
                <td>${master.getPhone()}</td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
<div class="text-article">
<form method="POST" action="">
<p>
<label for="masterName">Name
</label> <input type="text" name="masterName" />
<label for="position">Position
</label> <input type="text" name="position" />
<label for="phone">Phone
</label> <input type="text" name="phone" />
</p>
</form>
<p>
<button type="submit">Add</button>
</p>
</div>
</div>
<jsp:include page="/jspf/footer.jsp" />
</body>
</html>
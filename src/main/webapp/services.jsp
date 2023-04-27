
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="domain.Masters" %>
<%@ page import="domain.Services" %>


<%
Masters r1 = new Masters(1l, "Johnny Loyd", "Web Developer", "89516543467");
Masters r2 = new Masters(2l, "Lilly Roberson", "Artist", "89084242657");
Masters r3 = new Masters(3l, "Jasmine Jordan", "Photographer", "89506518235");
Masters[] masters = new Masters[]{r1, r2, r3};
int length = masters.length;
pageContext.setAttribute("masters", masters);


Services r5 = new Services(1l, "Website", 200, 5l, 1l, r1);
Services r4 = new Services(2l, "Marriage photos", 500, 14l, 2l, r2);

Services[] services = new Services[]{r5, r4};

pageContext.setAttribute("services", services);
%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"
charset="UTF-8">
<title>Services</title>
</head>
<body>
<jsp:include page="/jspf/header.jsp" />
<a href="/persons10lab/">
<img alt="logo" id="top-image" src="https://d3wo5wojvuv7l.cloudfront.net/t_square_limited_720/images.spreaker.com/original/4d903020ec7724d9c75dbff61b1963a7.jpg">
</a>
<div id="main">
<h2>Services</h2>
<table>
		<thead>
		<tr>
		            <th scope="col" >Id</th>
            <th scope="col">Service name</th>
            <th scope="col">price</th>
            <th scope="col">duration</th>
            <th scope="col">master</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="service" items="${services}">
		<tr>
		                <td >${service.getId()}</td>
                <td >${service.getServiceName()}</td>
                <td >${service.getPrice()}</td>
                <td>${service.getDuration()}</td>
                <td >${service.getMaster()}</td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
		<form method="POST" action="">
<p>
<label for="serviceName">Service name
</label> <input type="text" name="serviceName" />
<label for="price">Price
</label> <input type="text" name="price" />
<label for="duration">Duration
</label> <input type="text" name="duration" />

<select>
	<option disabled>Choose master</option>
	<c:forEach var="master" items="${masters}">
		<option value="${master}">
			${master.getMasterName()}
		</option>
	</c:forEach>
</select>
</p>
</form>
<p>
<button type="submit">Add</button>
</p>
</div>
<jsp:include page="/jspf/footer.jsp" />
</body>
</html>
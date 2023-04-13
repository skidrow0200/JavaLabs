<%@page language="java" contentType="text/html"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<title>Main page</title>
	</head>
	<body>
		<jsp:include page="jspf/header.jsp" />
		<div id="main">
			<ul>
				<li><a href="/persons10lab/masters">Masters</a>
				<li><a href="/persons10lab/services">Services</a>
			</ul>
		</div>
		<jsp:include page="jspf/footer.jsp" />
	</body>
</html>
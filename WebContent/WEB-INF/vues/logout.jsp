<html>
<head>
<title>Insert title here</title>
</head>
<body>

<% 
	session.invalidate();
	response.sendRedirect("login.jsp"); 
%>

</body>
</html>
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
	// 이안에서는 자바언어가능
	//1 값받기
	int x = Integer.parseInt(request.getParameter("xx"));
	int y = Integer.parseInt(request.getParameter("yy"));

	int hap = x + y;
	int cha = x - y;
	int gob = x * y;
	int mok = x / y;
	//변수만 사용할거면%뒤에 =붙여 밑에봐봐
	%>
<div style="background-color: ivory; border: 1px solid;">
<h1> <%=x %> +<%= y %> = <%=hap %></h1>
<h1><%= x  %> -<%= y %> = <%=cha %></h1>
<h1><%= x  %> *<%= y %> = <%=gob %></h1>
<h1><%= x  %> /<%= y %> = <%=mok %></h1>
</div>


</body>
</html>
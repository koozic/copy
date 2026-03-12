<%@ page import="com.example.test.Information" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//값만 받는곳
    Information infor = (Information) request.getAttribute("Information");

%>
view-계산 x(model에서 다 함)
<hr>
<h1>-회원정보확인</h1>
<h1>이름:<%=infor.getName()%></h1>
<h1>나이:<%=infor.getAge()  %> </h1>
<h1>성별:<%=infor.getGender()  %></h1>
<h1>-관심사:<%= infor.getHabit() %></h1>
</body>
</html>

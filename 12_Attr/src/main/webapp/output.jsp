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
//값 받아서 쓰기 계산은 이미 model에서 끝


%>

<h1>계산결과</h1>

<div>
<div>상품 가격	:<%=request.getAttribute("price")%> </div>
<div>지불한 돈	:<%=request.getAttribute("money")%> </div>
<div>잔돈		:<%=request.getAttribute("ex") %></div>
<div>멘트 	:<%=request.getAttribute("say") %></div>

<hr>
<%=request.getParameter("p") %>
<%=request.getParameter("m") %>
<hr>
1.돈이 모자를때만 버튼이 나오게 [얼마모자른데!!] 버튼누르면 output3.jsp에서 모자른 금액안내
	상품이 10000원 내 5000원이 모자라요~

</div>
</body>
</html>
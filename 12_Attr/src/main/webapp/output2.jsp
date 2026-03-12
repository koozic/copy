<%@page import="com.mz.attr.Result"%>
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

	Result r = (Result) request.getAttribute("rr");
	%>

	<h1>계산결과</h1>

	<div>
		<div>
			상품 가격 :<%=r.getPrice()%>
		</div>
		<div>
			지불한 돈 :<%=r.getMoney()%>
		</div>
		<div>
			잔돈 :<%=r.getEx()%></div>
		<div>
			멘트 :<%=r.getSay()%></div>

	</div>
	<hr>
	<%=request.getParameter("p")%>
	<%=request.getParameter("m")%>

	<%
	if (r.getEx() < 0) {
		int howmuch = r.getPrice() - r.getMoney();
	%><a href="output3.jsp?howmuch=<%=howmuch%>">
		<button>얼마모자른데요??</button>
	</a>
	<a href="output3.jsp?howmuch=<%=r.getEx()*-1%>">
		<button>얼마모자른데요??</button>
	</a>
	<a href="output3.jsp?howmuch=<%=r.getPrice() - r.getMoney()%>">
		<button>얼마모자른데요??</button>
	</a>
	
		<button onclick=location.href='output3.jsp?howmuch=<%=r.getEx()*-1%>'>얼마모자른데요??</button>
	<form action="output3.jsp">
	<input name="howmuch" hidden value="<%=r.getEx()*-1%>"><button>얼마</button>
	
	</form>
	
	
	
	<%
	}
	%>
</body>
</html>
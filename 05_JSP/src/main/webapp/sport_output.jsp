<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
String [] sp = request.getParameterValues("sp");
String result="";
 		for(String sport:sp){
 			
 			result+=sport+"/ ";	
 		}
 		
 String korResult = "";		
for(String sport:sp){
	switch(sport){
	
	case "soccer":
		korResult+= "축구";
		break;
	case "basketball":
		korResult+= "농구";
		break;
	case "badminton":
		korResult += "배드민턴";
		break;
	
	}


}


%>
<%=korResult %>

<h1><%=result %></h1>

<hr>
version.02
<%
Map<String,String> vals = new HashMap();
	vals.put("soccer","축구");
	vals.put("basketball","농구");
	vals.put("badminton","배드민턴");

	for(String s :sp){%>
	<h1><%=vals.get(s) %></h1>
<% }%>

</body>
</html>
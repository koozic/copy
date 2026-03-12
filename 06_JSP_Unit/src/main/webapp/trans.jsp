<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%!
public String sa(double tr){

	
	return String.format("%.1f", tr);
}

%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
 double tr = 1 ;
String user ="";
String un ="";
String unit =request.getParameter("ch");
double a = Double.parseDouble(request.getParameter("change")); 




switch (unit) {
case "a":  tr=a*0.39370079; 
user=a+"cm";
un = sa(tr)+"inch";			
break;
			
			
case "b": tr=a*0.3025;
user=a+"㎡";
un =sa(tr)+" 평";			
break;

case "c": tr=(a*9)/5+32;
user=a+"℃ ";
un = sa(tr)+"℉";
break;		

case "d": tr= a*0.6213712;

user=a+"km/h";
		

un = sa(tr)+" mi/h";		
				
break;
	


}

if(unit.equals("a")){}
%>
		<div>
		<div>변환결과</div>
		<div><%=user %></div>
		<div>|</div>
		<div><%= un %></div>
		<div><button onclick="location.harf='good.html'">돌아가기</button></div>
		
		</div>


	
	

</body>
</html>
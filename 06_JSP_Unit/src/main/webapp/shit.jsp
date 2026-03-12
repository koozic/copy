이찬우
groot3199
•
편히 쉬는 중

Mz — 26. 3. 5. 오전 10:43
insert into HUMAN
values (human_seq.nextval, '김', to_date('1980-05-05', 'YYYY-MM-DD'));
insert into HUMAN
values (human_seq.nextval, '나', to_date('1985-06-05', 'YYYY-MM-DD'));
insert into HUMAN
values (human_seq.nextval, '박', to_date('1980-07-05', 'YYYY-MM-DD'));
insert into HUMAN
values (human_seq.nextval, '이', to_date('1985-08-05', 'YYYY-MM-DD'));
insert into HUMAN
values (200, '최', to_date('1985-08-05', 'YYYY-MM-DD'));
insert into owner
values (OWNER_seq.nextval, 1, 1);
insert into owner
values (OWNER_seq.nextval, 2, 2);
insert into owner
values (OWNER_seq.nextval, 3, 3);
insert into owner
values (OWNER_seq.nextval, 4, 4);
insert into owner
values (OWNER_seq.nextval, 20, 4);
Mz — 26. 3. 6. 오전 9:54
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

input.html
1KB
package com.mz.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

Output.java
1KB
Mz — 26. 3. 6. 오후 3:30
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="reg.css" />

reg.html
3KB
.container {
  font-size: 20pt;
}
.items {
  margin: 0 auto;
  border: 1px solid black;

reg.css
1KB
Mz — 26. 3. 6. 오후 4:14
package com.mz.calc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

Reg.java
4KB
Mz — 26. 3. 6. 오후 4:57
첨부 파일 형식: unknown
cos-05Nov2002.jar
55.08 KB
Mz — 26. 3. 6. 오후 5:55
response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.print("<html>");
        out.print("<head>");
        out.print("<meta charset=\"UTF-8\">");
        out.print("</head>");
        out.print("<body>");
        
        out.print("<h1>" + name + "</h1>");
        out.printf("<h1><img src='imgFile/%s'></h1>", pic);
        out.printf("<h1>%s</h1>", etc);

        out.printf("<h1><a href='imgFile/%s'>사진보기</a></h1>", pic);
        out.printf("<h1><a href='imgFile/%s'>파일 다운로드</a></h1>", etc);
        
        out.print("</body>");
        out.print("</html>");
 
Mz — 오후 1:00
    <%
    // 1. 값
    String[] sports = request.getParameterValues("sports");
    
    String result = "";
    for(String ss : sports){
        result += ss + " / ";
    }
    
    String korResult = "";
    for(String ss : sports) {
        switch (ss) {
        case "soccer":
            korResult += "축구 ";
            break;
        case "basketball":
            korResult += "농구 ";
            break;
        case "badminton":
            korResult += "배드민턴 ";
            break;
        }
    }
    for(String sport : sports){ %>
        <h1> <%= sport%> </h1>
    <% }
    %>
    <hr>
<h1>    <%=result %></h1>
<h1>    <%=korResult %></h1>
Mz — 오후 2:59
cm -> inch
㎡ -> 평
℃ -> ℉
km/h -> mi/h
단위에요~
Mz — 오후 5:33
이미지
<svg xmlns="http://www.w3.org/2000/svg" height="48" width="48"><path d="M24 40 8 24 10.1 21.9 22.5 34.3V8H25.5V34.3L37.9 21.9L40 24Z"/></svg>
arrow_downward_FILL0_wght400_GRAD0_opsz48.svg
1KB
<svg xmlns="http://www.w3.org/2000/svg" height="48" width="48"><path d="M24 40.55 7.45 24 10.8 20.65 21.65 31.5V7.45H26.35V31.5L37.25 20.65L40.55 24Z"/></svg>
arrow_downward_FILL0_wght700_GRAD0_opsz48.svg
1KB
@charset "UTF-8";

@import url("https://fonts.googleapis.com/css2?family=Koulen&family=Pacifico&family=Source+Code+Pro:wght@700&family=Ubuntu&family=Water+Brush&display=swap");

body {
  height: 100vh;

NewFile.css
3KB
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">

NewFile.html
6KB
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

NewFile.jsp
2KB
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">

NewFile2.html
6KB
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

NewFile2.jsp
3KB
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unit Conversion</title>
<style type="text/css">

record_unit.html
3KB
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversion Result</title>

record_unit.jsp
4KB
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

output.jsp
1KB
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">

input.html
2KB
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

output.jsp
2KB
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

valid.html
1KB
﻿
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bitcount+Prop+Double+Ink:wght@100..900&display=swap" rel="stylesheet">

<style type="text/css">
.bg-a{
 background-color: #dfa9f3;
}
.bg-b{
 background-color: #cafbcc;
}
.bg-c{
 background-color: #f8fada;
}
.bg-d{
 background-color: #fbe5de;
}
.a{
	color: red;
}
.b{
	color: green;
}
.c{
	color: gold;
}
.d{
	color: pink;
}
body{
     font-family: "Bitcount Prop Double Ink", system-ui;
}



span{
    font-weight:bold;
}

button{
    margin-top:15px;
    padding:10px 20px;
    border:none;
    border-radius:6px;
    background:#4CAF50;
    color:white;
    font-size:16px;
    cursor:pointer;
}

button:hover{
    background:#45a049;
}


</style>
</head>
<body>
	<%
	double n = Double.parseDouble(request.getParameter("num"));
	String unit = request.getParameter("unit");
	String cc = "d";
	double result = n * 0.6213;
	String convertUnit = "mi/h";		
	if(unit.equals("cm")){
		result = n * 0.3937;
		convertUnit = "inch";
		 cc = "a";
	}else if(unit.equals("㎡")){
		result = n * 0.3025;
		convertUnit = "평";
		 cc = "b";
	}else if(unit.equals("℃")){
		result = n * 1.8 + 32;
		convertUnit = "℉";
		 cc = "c";
	}
	%>
	
	<div class="bg-<%=cc%>">
		<div>변환결과</div>
		<div><%=n %> <span class="<%=cc%>"><%=unit %></span></div>
		<div>↓</div>
		<div><%=String.format("%.1f", result) %> <span class="<%=cc%>"><%=convertUnit %></span></div>
		<div> <button onclick="location.href='input.html'">돌아가기</button> </div>
	</div>
	
	
	
	
</body>
</html>

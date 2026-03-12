<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="bmijsp.css">
<title>Insert title here</title>
</head>
<body>
<%


		String path = request.getServletContext().getRealPath("uploadFile");
		System.out.println(path);


 			MultipartRequest mr = new MultipartRequest(
 					request,path,
 		 			1024*1024*20,//20mb 최대허용 용량
 		 			"utf-8",
 		 			new DefaultFileRenamePolicy());
 			
 			String imgF = mr.getFilesystemName("imgF");
 			String na = mr.getParameter("name");
Double he = Double.parseDouble(mr.getParameter("height"));
Double we = Double.parseDouble(mr.getParameter("weight"));

 			



        System.out.print("키(cm) 입력: ");

        System.out.print("몸무게(kg) 입력: ");

        he = he / 100;   // cm → m 변환

        double bmi = we / (he * he);
		String result ="";
        System.out.println("BMI : " + bmi);

        if (bmi < 18.5) {
            System.out.println("저체중");
            result="저체중";
        } else if (bmi < 23) {
            System.out.println("정상");
            result="정상";
        } else if (bmi < 25) {
            System.out.println("과체중");
            result="과체중";
        } else {
            System.out.println("비만");
            result="비만";
        }

    




%>

	<div class="container">

<h1>BMI 결과</h1>
<div class="photo"><img alt="img" src="uploadFile/<%=imgF%>"> </div>
<div class="row">
<span>이름</span>
<span class="value"><%=na %></span>
</div>

<div class="row">
<span>키(CM)</span>
<span class="value"><%=he*100 %></span>
</div>

<div class="row">
<span>체중(KG)</span>
<span class="value"><%=we %></span>
</div>

<div class="row">
<span>BMI</span>
<span class="value"><%=String.format("%.1f", bmi) %></span>
</div>

<div class="row">
<span>결과</span>
<span class="value"><%= result %></span>
</div>

<a href="bmi_byGPT.html">
<button>다시하기</button>
</a>

</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="reg.css" />
<title>Insert title here</title>
</head>
<body>
<% 
		String n = request.getParameter("name");
		String i = request.getParameter("id");
		String p = request.getParameter("pw");
		String g = request.getParameter("gender");
		String a = request.getParameter("addr");
		String[] inter = request.getParameterValues("interest");
		String intro = request.getParameter("introduce");
		System.out.println(a);
		String inter2 ="";
		
		if (inter!=null) {
			
		
		
		for (String ss : inter) {
			inter2 += ss+" ";
			System.out.println(ss);
		}
		}else {
			inter2="관심사없음";
		}
		System.out.println(intro);
		%>
		
		   <form action="reg.jsp" method="post">
      <div class="container">
        <div class="items">
          <div class="item1">Name</div>
          <div class="item2">
       			<%=n %>   		
          </div>
        </div>
        <div class="items">
          <div class="item1">ID</div>
          <div class="item2">
                 			<%=i %>   		
          
          </div>
        </div>
        <div class="items">
          <div class="item1">PW</div>
          <div class="item2">
       			<%=p %>   		
          </div>
        </div>
        <div class="items">
          <div class="item1">Gender</div>
          <div class="item2">
       			<%=g %>   		
          </div>
        </div>
        <div class="items">
          <div class="item1">Addr</div>
          <div class="item2">
	<%=a %>
	          </div>
        </div>
        <div class="items inter">
          <div class="item1">Interest</div>
          <div class="item2 interest">
            <div>
            </div>
            <div>
              <%=inter2 %>
            </div>
          </div>
        </div>
        <div class="items text">
          <div class="item1">Introduce</div>
             
           <div class="item2" ><%=intro %></div> 
      </div>
      </div>
    </form>
</body>
</html>
package com.mz.model2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//c(controller)-교통정리
//상황판단해서 필요한쪽으로 보냄
//웹사이트 진입점(실행을 여기서)
@WebServlet("/C")
public class C extends HttpServlet {

	// 주소를 쳐서 접속하거나 클릭해서 들어감-get요청
	// 어떤 사이트를 처음들어가는경우-GET

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("test111");
		response.sendRedirect("v1.html");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// int aa = Integer.parseInt(request.getParameter("a"));
		// int bb = Integer.parseInt(request.getParameter("b"));

		// 비지니스 로직을 M에
		M.calc(request);
		// 어디로??
		RequestDispatcher rd = request.getRequestDispatcher("v2.jsp");
		rd.forward(request, response);//전것을 고정해서 사용 기준점을 잘 생각해라 루트를 먼저파악하자

	}

}

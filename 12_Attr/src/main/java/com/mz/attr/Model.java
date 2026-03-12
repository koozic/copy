package com.mz.attr;

import javax.servlet.http.HttpServletRequest;

public class Model {

	public static void getExchange(HttpServletRequest request) {
		int price=Integer.parseInt( request.getParameter("p"));
		int money=Integer.parseInt( request.getParameter("m"));
		int ex=money-price;
		String say="잔돈이요~";
		if (price==money) {
			 say="감사합니다";
		}else if (price>money) {
			 say="야가다로 가라";
			 	
		}
		//결과페이지에서 뭘 쓸지?
		//price,money,say,ex
		request.setAttribute("price", price);
		request.setAttribute("money", money);
		request.setAttribute("ex", ex);
		request.setAttribute("say", say);
		
		Result r = new Result(price, money, ex, say);
		request.setAttribute("rr", r);
	}
	
	
	

	
}

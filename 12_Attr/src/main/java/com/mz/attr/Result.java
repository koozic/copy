package com.mz.attr;

public class Result {
			//JAVA Bean
	//VO,DTO,POJO
	
	private int price;
	private int money;
	private int ex;
	private String say;
	
	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getEx() {
		return ex;
	}

	public void setEx(int ex) {
		this.ex = ex;
	}

	public String getSay() {
		return say;
	}

	public void setSay(String say) {
		this.say = say;
	}

	public Result(int price, int money, int ex, String say) {
		this.price = price;
		this.money = money;
		this.ex = ex;
		this.say = say;
	}
}

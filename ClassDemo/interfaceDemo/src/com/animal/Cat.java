package com.animal;

public class Cat extends Animal {
	private String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("猫吃鱼");
	}

	@Override
	public void sleep() {
		// TODO Auto-generated method stub
		System.out.println("猫睡觉");
	}
	
}

package com.animal;

public class Dog extends Animal implements Jump {

	@Override
	public void jump() {
		// TODO Auto-generated method stub
		System.out.println("会跳高的狗");
	}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		System.out.println("狗吃肉");
	}

	@Override
	public void sleep() {
		// TODO Auto-generated method stub
		System.out.println("狗睡觉");
	}

}

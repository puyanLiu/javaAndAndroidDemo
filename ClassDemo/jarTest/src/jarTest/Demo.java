package jarTest;

import com.animal.Animal;
import com.animal.Cat;
import com.animal.Dog;

public class Demo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Animal animal = new Cat();
		animal.sleep();
		animal.eat();
		System.out.println("测试");
		
		animal = new Dog();
		Dog dog = (Dog)animal;
		dog.sleep();
		dog.eat();
		dog.jump();
	}

}

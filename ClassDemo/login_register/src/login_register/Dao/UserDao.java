package login_register.Dao;

import java.util.ArrayList;
import java.util.Iterator;

import login_register.model.UserModel;

public class UserDao {
	private static ArrayList<UserModel> arrayList = new ArrayList<>();
	
	static {
		System.out.println("静态代码块");
	}
	
	{
		System.out.println("成员代码块");
	}
	
	public boolean isLogin(String username, String password) {
		boolean isFlag = false;
		for(UserModel u: arrayList) {
			if (u.getUsername().equals(username) && u.getPassword().equals(password)) {
				isFlag = true;
				break;
			}
		}
		return isFlag;
	}
	
	public void register(UserModel model) {
		arrayList.add(model);
	}
}

package com.javabeans;

public class Users {
	private String username;//私有
	private String password;
	
	public Users(){}//无参的空的构造方法；

	public String getUsername() {//get方法；
		return username;
	}

	public void setUsername(String username) {//set方法；
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}

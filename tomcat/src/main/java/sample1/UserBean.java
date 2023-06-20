package sample1;

import java.io.Serializable;

public class UserBean implements Serializable {
	private int id;
	private String name;
	private String password;

	public UserBean() {

	this.id = 0;
	this.name = "";
	this.password = "";

	}
}

package com.ob.action;
import java.util.Iterator;

import com.ob.dao.ClientDAO;
import com.ob.dao.impl.ClientDaoImpl;
import com.ob.model.Client;

public class LoginClientAction extends SuperAction {
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute(){
		ClientDAO dao = new ClientDaoImpl();
		java.util.List user = dao.findByUserName(username);
		Iterator iter = user.iterator();
		if(user.isEmpty()){
			return "FAIL";
		} else {
			Client client = (Client)iter.next();
			if(client.getUserName().equals(username) && client.getUserPassword().equals(password)){
				return "SUCCESS";
			} else {
				return "FAIL";
			}
		}
	}
	
}

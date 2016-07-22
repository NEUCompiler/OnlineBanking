package com.ob.service.impl;

import com.ob.dao.ClientDao;
import com.ob.model.Client;

public class ClientServiceImpl {
	ClientDao clientDao;
	
	public void save() {
		clientDao.save();
	}
}

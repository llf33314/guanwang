package com.gt.service.cooperation.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;
import com.gt.model.TManUser;
import com.gt.service.cooperation.ICooperationService;

@Service
public class CooperationServiceImpl implements ICooperationService{

	@Autowired
	private IBaseDAO baseDao;
	
	@Override
	public void update(TManUser user) {
		baseDao.update(user);
	}

	@Override
	public TManUser getUser() {
		
		return (TManUser) baseDao.get(TManUser.class, 1);
	}

}

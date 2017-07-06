package com.gt.service.user.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gt.dao.IBaseDAO;
import com.gt.model.user.User;
import com.gt.service.user.IUserService;
import com.gt.utils.MD5Util;

@Service
public class UserServiceImpl implements IUserService{

	@Autowired
	private IBaseDAO baseDao;
	
	@Override
	public User login(String userLogin, String userPassword) {
		Map<String, Object> res = new HashMap<>();
		res.put("status", 0);
		Map<String, Object> param = new HashMap<>();
		param.put("userLogin", userLogin);
		param.put("userPassword", MD5Util.getMD5SM(userPassword));
		User user = (User) baseDao.findByPro(User.class, param);
		if(user != null){
			return user;
		}
		return null;
	}


	@Override
	public void modifyUserPassword(User user) throws Exception {
		
		if(user.getId() != null){
			String sql = "UPDATE t_ws_user SET user_password = ? WHERE ID = ?;";
			baseDao.update(sql, user.getUserPassword(), user.getId());
		}else{
			throw new Exception();
		}
		
	}

	@Override
	public User selectById(Integer id) {
		return (User) baseDao.get(User.class, id);
	}

}

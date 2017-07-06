package com.gt.service.user;

import com.gt.model.user.User;

/**
 * 
 * @author psr
 *
 */
public interface IUserService {

	/**
	 * 登录
	 */
	public User login(String userLogin, String userPassword);
	
	/**
	 * 修改昵称
	 * @param user 
	 * @throws Exception 
	 */
	public void modifyUserPassword(User user) throws Exception;

	/**
	 * 根据ID查找用户
	 * @param id
	 * @return
	 */
	public User selectById(Integer id);
}

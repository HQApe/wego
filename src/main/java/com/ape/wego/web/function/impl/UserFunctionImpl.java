package com.ape.wego.web.function.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static com.ape.common.WeGoSystemUtil.*;//导入所有的静态方法

import com.ape.common.WeGoSystemExeption;
import com.ape.wego.dao.UserDao;
import com.ape.wego.entity.UserEntity;
import com.ape.wego.web.function.UserFunction;

@Service
public class UserFunctionImpl implements UserFunction{

	@Autowired
	UserDao userDao;
	
	@Override
	public UserEntity login(String accountNo, String password)throws Exception {
		
		accountNo = $("账户不能为空", accountNo);//在WeGoSystemUtil中定义的静态方法
		password = $("密码不能为空", password);
		UserEntity userEntity = userDao.selectByAccountNo(accountNo);
		if (userEntity == null) {
			throw new WeGoSystemExeption("账号不存在");
		}
		
		if (!userEntity.getPassword().equals(password)) {
			throw new WeGoSystemExeption("密码错误");
		}
		
		
		
		return userEntity;
	}
}

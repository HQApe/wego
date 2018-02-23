package com.ape.wego.web.function.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import static com.ape.common.WeGoSystemUtil.*;//�������еľ�̬����

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
		
		accountNo = $("�˻�����Ϊ��", accountNo);//��WeGoSystemUtil�ж���ľ�̬����
		password = $("���벻��Ϊ��", password);
		UserEntity userEntity = userDao.selectByAccountNo(accountNo);
		if (userEntity == null) {
			throw new WeGoSystemExeption("�˺Ų�����");
		}
		
		if (!userEntity.getPassword().equals(password)) {
			throw new WeGoSystemExeption("�������");
		}
		
		
		
		return userEntity;
	}
}

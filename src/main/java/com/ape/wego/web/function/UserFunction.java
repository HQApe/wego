package com.ape.wego.web.function;

import com.ape.wego.entity.UserEntity;

public interface UserFunction {
	
	public UserEntity login(String accountNo, String password)throws Exception;
}

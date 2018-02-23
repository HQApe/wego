package com.ape.wego.dao;

import org.apache.ibatis.annotations.Param;

import com.ape.wego.entity.UserEntity;

public interface UserDao {

	public UserEntity selectByAccountNo(@Param("accountNo") String accountNo) throws Exception;
}

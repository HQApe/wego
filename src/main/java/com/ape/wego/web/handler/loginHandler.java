package com.ape.wego.web.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ape.wego.entity.UserEntity;
import com.ape.wego.web.function.UserFunction;

@Controller
public class loginHandler {
	@Autowired
	UserFunction fun;
	
	@ResponseBody
	@RequestMapping("/login.do")
	public Map<String, Object> login(String accountNo, String password, HttpServletRequest request) {
		
		Map<String, Object> responsMap = new HashMap<>();
		
		try {
			UserEntity userEntity =  fun.login(accountNo, password);
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", userEntity);
			responsMap.put("status", "0");
			responsMap.put("remark", "成功");
			responsMap.put("user", userEntity);
		} catch (Exception e) {
			// TODO: handle exception
			request.setAttribute("message", e.getMessage());
			
			responsMap.put("status", "1");
			responsMap.put("remark", "请求出错啦！");
		}
		
		return responsMap;
	}
	
	@RequestMapping("/index.do")
	public String index() {
		return "/homePage/index";
	}
	
}

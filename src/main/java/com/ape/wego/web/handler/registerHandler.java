package com.ape.wego.web.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class registerHandler {
	
	
//	@RequestMapping("/register.do")
//	public String register() {
//		return "register/register";
//	}
	
	@RequestMapping("/getCode.do")
	public void getCode() {
		
		System.out.println("123456");;
	}

}

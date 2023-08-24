package com.login.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Loginforstudent {
	
	
	@RequestMapping("/startup")
	public String verify() {
		
		return "first";
		
	}

}

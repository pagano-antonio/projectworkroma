package com.ctr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class HomeCtr {
	
	
//////////////////// HOME ///////////////////////

	@GetMapping("/home")
	public String vaiAllaHome() {
		return "home"; // views/home.jsp
	}

}

package com.ctr;

import org.springframework.web.bind.annotation.GetMapping;

public class LoginCtr {

//////////////////// LOGIN ///////////////////////

@GetMapping("/login")
public String vaiAlLogin() {
return "login"; // views/home.jsp
}
}

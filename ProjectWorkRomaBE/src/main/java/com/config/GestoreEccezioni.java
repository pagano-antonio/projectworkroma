package com.config;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GestoreEccezioni {

	@ExceptionHandler(value = Exception.class)
	public String handleGlobalException(Exception e, Model model) {
	e.printStackTrace();	
	String msg = e.getMessage();
	model.addAttribute("messaggioErrore", msg);
	return "systemError";
	}
}

package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.EmployeeRepository;
import com.model.Employee;

@Controller
@RequestMapping ("loginCtr")
public class LoginCtr {

	@Autowired
	private EmployeeRepository employeeRep;
	
//////////////////// LOGIN ///////////////////////////////////////////
	
	@GetMapping("/preLogin")    
	public String preLogin(Model model) {
		return "preLogin";
	}
@GetMapping("/login")
public String vaiAlLogin(@RequestParam String username, @RequestParam String password) {
	Employee employee = employeeRep.findByUsernameAndPassword(username, password);
	if (employee != null) {
		return "home";
	} else {
		return "error"; 
	}

}

}

package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EmployeeTypeRepository;
import com.model.EmployeeType;

@Controller
@RequestMapping
public class EmployeeTypeCtr {

	@Autowired
	private EmployeeTypeRepository EmployeeTypeRep;

/////////////////////////////////// ADD METHOD ///////////////////////////////////////////////////////////	
	
	@GetMapping("/preAddEmployeeType")    
	public String preAddEmployeeType(Model model) {
		return "addEmployeeType";
	}

	@PostMapping("/addEmployeeType") 
	public String addEmployeeType(Model model, EmployeeType et) {
		EmployeeTypeRep.save(et); 
		return "addSuccess";
	}
	
//////////////////////////////// SEARCH BY ID ///////////////////////////////////////////////////////////	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.EmployeeTypeRepository;
import com.dao.EmployeeRepository;
import com.model.EmployeeType;
import com.model.Employee;

@Controller
public class EmployeeTypeCtr {

	@Autowired
	private EmployeeTypeRepository employeeTypeRep;
	@Autowired
	private EmployeeRepository employeeRep;

/////////////////////////////////// ADD METHOD ///////////////////////////////////////////////////////////	
	
	@GetMapping("/company/preAddEmployeeType")    
	public String preAddEmployeeType(Model model) {
		return "company/addEmployeeType";
	}

	@PostMapping("/company/addEmployeeType") 
	public String addEmployeeType(Model model, EmployeeType et) {
		employeeTypeRep.save(et); 
		return "success";
	}
	
//////////////////////////////////////DELETE BY ID   ////////////////////////////////////

	
	@GetMapping("/company/deleteByIdEmployeeType")
	public String deleteByIdEmployeeType(Model model, Integer idEmployeeType) {
		EmployeeType employeeType = (EmployeeType) employeeTypeRep.findById(idEmployeeType).orElse(null);
		if(idEmployeeType != null) {
			employeeTypeRep.delete(employeeType);
			return "sucess";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////  UPDATE   /////////////////////////////////////////

	@GetMapping("/preUpdateByEmployeeType")
	public String preUpdateByIdEmployeeType(Model model,@RequestParam Integer idEmployeeType) {
		EmployeeType employeeType = employeeTypeRep.findById(idEmployeeType).orElse(null);
			model.addAttribute("idEmployeeType", employeeType);
			return "updateByEmployeeType";
	}
	@PostMapping("/updateByEmployeeType")		
	public String updateByIdEmployeeType(Model model,EmployeeType employeeType) {
		employeeTypeRep.save(employeeType);	        
	        return "success";  
	}
		
//////////////////////////////// FIND BY ID ///////////////////////////////////////////////////////////	
	
	@GetMapping("/company/preFindByIdEmployeeType")
	public String preFindByIdEmployeeType() {
	    return "company/findByIdEmployeeType";
	}

	@GetMapping("/company/findByIdEmployeeType")
	public String findByIdEmployeeType(Model model, @RequestParam Integer idEmployeeType) {
	    EmployeeType employeeType = (EmployeeType) employeeTypeRep.findById(idEmployeeType).orElse(null);
	    model.addAttribute("idEmployeeType", employeeType); 
	    List<Employee> employees = employeeRep.findAll();
	    model.addAttribute("idEmployee", employees);
	    if(employeeType != null) {
	        return "company/resultsFindByIdEmployeeType";
	    } else {
	        String errorMessage = "ops!";
	        model.addAttribute("errorMessage", errorMessage);
	        return "error";
	    }       
	}	
}

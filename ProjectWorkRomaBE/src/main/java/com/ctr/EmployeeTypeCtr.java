package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.EmployeeTypeRepository;
import com.model.EmployeeType;

@Controller
@RequestMapping
public class EmployeeTypeCtr {

	@Autowired
	private EmployeeTypeRepository employeeTypeRep;

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

	@GetMapping("/company/preDeleteByIdEmployeeType")
	public String preDeleteByIdEmployeeType() {
		return "company/deleteByIdeEmployeeType";
	}
	
	@GetMapping("/company/deleteByIdEmployeeType")
	public String deleteByIdEmployeeType(Model model, Integer idEmployeeType) {
		EmployeeType employeeType = (EmployeeType) employeeTypeRep.findById(idEmployeeType).orElse(null);
		if(idEmployeeType != null) {
			employeeTypeRep.delete(employeeType);
			return "sucess";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//////////////////////////////////////UPDATE   /////////////////////////////////////////

	@GetMapping("/company/preupdateByIdEmployeeType")
	public String preupdateByIdEmployeeType() {
		return "company/updateByIdEmployeeType";
	}
	
	@GetMapping("/company/updateByIdEmployeeType")
	public String updateByIdEmployeeType(Model model, @RequestParam int idEmployeeType) {
		EmployeeType employeeType = (EmployeeType) employeeTypeRep.findById(idEmployeeType).orElse(null);
		if(employeeType != null) {
			model.addAttribute("idEmployeeType", employeeType);
			return "company/sucess";
		}else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
		
	}
	
//////////////////////////////// FIND BY ID ///////////////////////////////////////////////////////////	
	
	@GetMapping("/company/preFindByIdEmployeeType")
	public String preFindByIdEmployeeType() {
		return "company/findByIdEmployeeType";
	}
	
	@GetMapping("/company/findByIdEmployeeType")
	public String findByIdEmployeeType(Model model, @RequestParam int idEmployeeType) {
		EmployeeType employeeType = (EmployeeType) employeeTypeRep.findById(idEmployeeType).orElse(null);
		if(employeeType != null) {
			model.addAttribute("idEmployeeType", employeeType);
			return "company/resultsFindByIdEmployeeType";
		}else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

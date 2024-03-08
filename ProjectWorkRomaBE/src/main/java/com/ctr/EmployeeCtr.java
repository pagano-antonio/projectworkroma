package com.ctr;


	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.EmployeeRepository;
    import com.model.Employee;


	@Controller   
	@RequestMapping
	public class EmployeeCtr {	

	
	@Autowired
	private EmployeeRepository employeeRep;

		
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
		
		@GetMapping("/company/preAddEmployee")    
		public String preAddEmployee(Model model) {
			return "company/addEmployee";
		}

		@PostMapping("/company/addEmployee") 
		public String addEmployee(Model model, Employee e) {
			employeeRep.save(e); 
			return "success";
		}
	
//////////////////////////////////////DELETE BY ID   ////////////////////////////////////
		
		@GetMapping("/company/preDeleteByIdEmployee")
		public String deleteByIdEmployee() {
			return "company/deleteByInEmployee";
		}
		
		@GetMapping("/company/deleteByIdEmployee")
		public String deleteByIdEmployee(Model model, Integer idEmployee) {
			Employee employee = (Employee) employeeRep.findById(idEmployee).orElse(null);
			if(idEmployee != null) {
				employeeRep.delete(employee);
				return "sucess";
			}else{
				String errorMessage = "ops!";
				model.addAttribute("errorMessage", errorMessage);
				return "error";
			}
		}
		
//////////////////////////////////////UPDATE   /////////////////////////////////////////

		@GetMapping("/company/preupdateByIdEmployee")
		public String preupdateByIdEmployee() {
			return "company/updateByIdEmployee";
		}
		
		@GetMapping("/company/updateByIdEmployee")
		public String updateByIdEmployee(Model model, @RequestParam int idEmployee) {
			Employee employee = (Employee) employeeRep.findById(idEmployee).orElse(null);
			if(employee != null) {
				model.addAttribute("idEmployee", employee);
				return "company/sucess";
			}else {
				String errorMessage = "ops!";
				model.addAttribute("errorMessage", errorMessage);
				return "errore";
			}
			
		}
		
////////////////////////////////// FIND BY ID ///////////////////////////////////////////////////////////
		
		@GetMapping("/company/preFindhByIdEmployee")
		public String preFindByIdEmployee() {
			return "company/findByIdEmployee";
		}
		
		@GetMapping("/company/findByIdEmployee")
		public String findByIdEmployee(Model model, @RequestParam int idEmployee) {
			Employee employee = (Employee) employeeRep.findById(idEmployee).orElse(null);
			if(employee != null) {
				model.addAttribute("idEmployee", employee);
				return "company/resultsFindByIdEmployee";
			}else {
				String errorMessage = "ops!";
				model.addAttribute("errorMessage", errorMessage);
				return "error";
			}
			
		}
		
		
		
		

	}

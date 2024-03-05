package com.ctr;


	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestMapping;

	
    import com.dao.EmployeeRepository;
    import com.model.Employee;


	@Controller   
	@RequestMapping
	public class EmployeeCtr {	

	
	@Autowired
	private EmployeeRepository EmployeeRep;

		
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
		
		@GetMapping("/preAddEmployee")    
		public String preAddEmployee(Model model) {
			return "addEmployee";
		}

		@PostMapping("/addEmployee") 
		public String addEmployee(Model model, Employee e) {
			EmployeeRep.save(e); 
			return "addSuccess";
		}
	
////////////////////////////////// SEARCH BY ID ///////////////////////////////////////////////////////////


	}

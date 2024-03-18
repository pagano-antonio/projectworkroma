package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.EmployeeRepository;
import com.dao.EmployeeTypeRepository;
import com.model.Employee;
import com.model.EmployeeType;

@Controller

public class EmployeeCtr {

	@Autowired
	private EmployeeRepository employeeRep;

	@Autowired
	private EmployeeTypeRepository employeeTypeRep;

////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/preAddEmployee")
	public String preAddEmployee(Model model) {
		return "addEmployee";
	}

	@PostMapping("/addEmployee")
	public String addEmployee(Model model, Employee e) {
		employeeRep.save(e);
		return "preLogin";
	}

//////////////////////////////////////  DELETE BY ID   ////////////////////////////////////

	@GetMapping("/company/preDeleteByIdEmployee")
	public String deleteByIdEmployee() {
		return "company/deleteByIdEmployee";
	}

	@GetMapping("/company/deleteByIdEmployee")
	public String deleteByIdEmployee(Model model, Integer idEmployee) {
		Employee employee = (Employee) employeeRep.findById(idEmployee).orElse(null);
		if (idEmployee != null) {
			employeeRep.delete(employee);
			return "sucess";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////  UPDATE   /////////////////////////////////////////

	@GetMapping("/preUpdateByIdEmployee")
	public String preUpdateByIdEmployee(Model model, @RequestParam Integer idEmployee) {
	    Employee employee = employeeRep.findById(idEmployee).orElse(null);
	    if (employee != null) {
	        List<EmployeeType> employeeType = employeeTypeRep.findAll(); 
	        model.addAttribute("idEmployee", employee); 
	        model.addAttribute("listIdEmployeeType", employeeType);
	    }
	    return "updateByIdEmployee";
	}

	@PostMapping("/updateByIdEmployee")
	public String updateByIdEmployee(@ModelAttribute("employee") Employee employee, @RequestParam Integer idEmployeeType) {
	    EmployeeType employeeType = employeeTypeRep.findById(idEmployeeType).orElse(null);
	    employee.setEmployeeType(employeeType); 
	    employeeRep.save(employee);
	    return "success";
	} 
////////////////////////////////// FIND BY ID ///////////////////////////////////////////////////////////

	@GetMapping("/company/preFindByIdEmployee")
	public String preFindByIdEmployee() {
		return "company/findByIdEmployee";
	}

	@GetMapping("/company/findByIdEmployee")
	public String findByIdEmployee(Model model, @RequestParam Integer idEmployee) {
		Employee employee = (Employee) employeeRep.findById(idEmployee).orElse(null);
		model.addAttribute("idEmployee", employee);
		if (employee != null) { 
			return "company/resultsFindByIdEmployee";
		} else { 
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}

	}

}

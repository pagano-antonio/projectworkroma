package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.EmployeeRepository;
import com.dao.EmployeeTypeRepository;
import com.model.Employee;
import com.model.EmployeeType;

@Controller
@RequestMapping
public class EmployeeCtr {

	@Autowired
	private EmployeeRepository employeeRep;

	@Autowired
	private EmployeeTypeRepository employeeTypeRep;

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

//////////////////////////////////////  DELETE BY ID   ////////////////////////////////////

	@GetMapping("/company/preDeleteByIdEmployee")
	public String deleteByIdEmployee() {
		return "company/deleteByInEmployee";
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

	@GetMapping("/company/preUpdateByIdEmployee")
	public String preUpdateByIdEmployee(Model model, @RequestParam Integer idEmployee) {
	    Employee employee = employeeRep.findById(idEmployee).orElse(null);
	    model.addAttribute("idEmployee", employee); 
	    List<EmployeeType> employeeType = employeeTypeRep.findAll(); 
	    model.addAttribute("listIdEmployeeType", employeeType);
	    return "company/updateByIdEmployee";
	}

	@PostMapping("/company/updateByIdEmployee")
	public String updateByIdEmployee(Model model, @ModelAttribute("employee") Employee employee, @RequestParam Integer idEmployeeType) { // Aggiunto "@RequestParam" per idEmployeeType
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
		if (employee != null) {
			model.addAttribute("idEmployee", employee);
			return "company/resultsFindByIdEmployee";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}

	}

}

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
import com.dao.JobInterviewRepository;
import com.model.Employee;
import com.model.EmployeeType;
import com.model.JobInterview;

@Controller

public class EmployeeCtr {

	@Autowired
	private EmployeeRepository employeeRep;

	@Autowired
	private EmployeeTypeRepository employeeTypeRep;

	@Autowired
	private JobInterviewRepository jobInterviewRep;

////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/preAddEmployee")
	public String preAddEmployee(Model model) {
		List<EmployeeType> listEmployeeType = employeeTypeRep.findAll();
		model.addAttribute("listEmployeeType", listEmployeeType);
		return "addEmployee";
	}

	@PostMapping("/addEmployee")
	public String addEmployee(Model model, Employee e, EmployeeType employeeType) {
		employeeRep.save(e);
		employeeTypeRep.save(employeeType);
		return "preLogin";
	}

	@GetMapping("company/preAddEmployee")
	public String preAddEmployee1(Model model) {
		List<EmployeeType> listEmployeeType = employeeTypeRep.findAll();
		model.addAttribute("listEmployeeType", listEmployeeType);
		List<JobInterview> listJobInterview = jobInterviewRep.findAll();
		model.addAttribute("listJobInterview", listJobInterview);
		return "company/addEmployee";
	}

	@PostMapping("/company/addEmployee")
	public String addEmployee1(Model model, Employee e, EmployeeType employeeType, JobInterview jobInterview) {
		employeeRep.save(e);
		employeeTypeRep.save(employeeType);
		jobInterviewRep.save(jobInterview);
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
			return "success";
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
		model.addAttribute("idEmployee", employee);
		List<EmployeeType> employeeType = employeeTypeRep.findAll();
		model.addAttribute("listIdEmployeeType", employeeType);
		return "updateByIdEmployee";
	}

	@PostMapping("/updateByIdEmployee")
	public String updateByIdEmployee(Model model, @ModelAttribute("employee") Employee employee,
			Integer idEmployeeType) {
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

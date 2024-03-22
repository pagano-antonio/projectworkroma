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
import com.dao.JobInterviewRepository;
import com.dao.CandidateRepository;
import com.dao.StateJobInterviewRepository;
import com.dao.EmployeeRepository;
import com.model.Candidate;
import com.model.Employee;
import com.model.JobInterview;
import com.model.StateJobInterview;

@Controller
public class JobInterviewCtr {

	@Autowired
	private JobInterviewRepository jobInterviewRep;
	
	@Autowired
	private CandidateRepository candidateRep;
	
	@Autowired
	private StateJobInterviewRepository stateJobInterviewRep;
	
	@Autowired
	private EmployeeRepository employeeRep;

//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preAddJobInterview")
	public String preAddJobInterview(Model model) {
		return "job/addJobInterview";
	}

	@PostMapping("/job/addJobInterview")
	public String addJobInterview(Model model, JobInterview jobInter) {
		jobInterviewRep.save(jobInter);
		return "success";
	}

//////////////////////////////////////UPDATE METHOD //////////////////////////////////////////////////////////

	  @GetMapping("/job/preUpdateByIdJobInterview")
	    public String preUpdateByIdIdJobInterview(Model model,@RequestParam Integer idJobInterview) {
	    	JobInterview jobInterview = jobInterviewRep.findById(idJobInterview).orElse(null);
	            model.addAttribute("idJobInterview", jobInterview);
	            List<Candidate> candidate = candidateRep.findAll();
	            List<StateJobInterview> stateJobInterview = stateJobInterviewRep.findAll();
	            List<Employee> employee = employeeRep.findAll();
	            model.addAttribute("listIdCandidate", candidate);
	            model.addAttribute("listIdStateJobInterview", stateJobInterview);
	            model.addAttribute("listIdEmployee", employee);
	            return "job/updateByIdJobInterview";     
	      
	    }   

	    @PostMapping("/job/updateByIdJobInterview")
	    public String updateByIdJobInterview(Model model,@ModelAttribute ("jobInterview") JobInterview jobInterview, Integer  idCandidate, Integer idStateJobInterview, Integer idEmployee) {
	    	Candidate candidate = (Candidate)candidateRep.findById(idCandidate).orElse(null);
	    	StateJobInterview stateJobInterview = (StateJobInterview)stateJobInterviewRep.findById(idStateJobInterview).orElse(null);
	    	Employee employee = (Employee)employeeRep.findById(idEmployee).orElse(null);
	      jobInterview.setCandidate(candidate);
	      jobInterview.setStateJobInterview(stateJobInterview);
	      jobInterview.setEmployee(employee); 
	      jobInterviewRep.save(jobInterview);
	            return "success";   
	      
	    }  

//////////////////////////////////////DELETE BY ID //////////////////////////////////////////////////////////

	@GetMapping("/job/preDeleteByIdJobInterview")
	public String preDeleteByIdJobInterview() {
		return "job/deleteByIdJobInterview";
	}

	@GetMapping("/job/deleteByIdJobInterview")
	public String deleteByIdJobInterview(Model model, Integer idJobInterview) {
		JobInterview jobInterview = (JobInterview) jobInterviewRep.findById(idJobInterview).orElse(null);
		if (jobInterview != null) {
			jobInterviewRep.delete(jobInterview);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}
}
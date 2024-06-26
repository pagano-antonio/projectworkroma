package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
		List<Candidate> listCandidate = candidateRep.findAll();
		List<StateJobInterview> stateJobInterview = stateJobInterviewRep.findAll();
		List<Employee> employee = employeeRep.findAll();
		model.addAttribute("listIdStateJobInterview", stateJobInterview);
		model.addAttribute("listCandidate", listCandidate);
		model.addAttribute("listIdEmployee", employee);
		return "job/addJobInterview";
	}

	@PostMapping("/job/addJobInterview")
	public String addJobInterview(Model model, JobInterview jobInter) {
		jobInterviewRep.save(jobInter);
		return "success";
	}

//////////////////////////////////////UPDATE METHOD //////////////////////////////////////////////////////////

	@GetMapping("/preUpdateByIdJobInterview")
	public String preUpdateByIdIdJobInterview(Model model, @RequestParam Integer idJobInterview) {
		JobInterview jobInterview = jobInterviewRep.findById(idJobInterview).orElse(null);
		model.addAttribute("idJobInterview", jobInterview);
		List<Candidate> candidate = candidateRep.findAll();
		List<StateJobInterview> stateJobInterview = stateJobInterviewRep.findAll();
		List<Employee> employee = employeeRep.findAll();
		model.addAttribute("listCandidate", candidate);
		model.addAttribute("listIdStateJobInterview", stateJobInterview);
		model.addAttribute("listIdEmployee", employee);
		return "updateByIdJobInterview";

	}

	@PostMapping("/updateByIdJobInterview")
	public String updateByIdJobInterview(Model model, @ModelAttribute("jobInterview") JobInterview jobInterview,
			Integer idCandidate, Integer idStateJobInterview, Integer idEmployee) {
		Candidate candidate = (Candidate) candidateRep.findById(idCandidate).orElse(null);
		StateJobInterview stateJobInterview = (StateJobInterview) stateJobInterviewRep.findById(idStateJobInterview)
				.orElse(null);
		Employee employee = (Employee) employeeRep.findById(idEmployee).orElse(null);
		jobInterview.setCandidate(candidate);
		jobInterview.setStateJobInterview(stateJobInterview);
		jobInterview.setEmployee(employee);
		jobInterviewRep.save(jobInterview);
		return "success";

	}

//////////////////////////////////////DELETE BY ID //////////////////////////////////////////////////////////


	@GetMapping("/job/deleteByIdJobInterview")
	public String deleteByIdJobInterview(Model model, Integer idJobInterview, Integer idCandidate) {
		JobInterview jobInterview = (JobInterview) jobInterviewRep.findById(idJobInterview).orElse(null);
		List<Candidate> candidate = candidateRep.findByIdCandidate(idCandidate);
		model.addAttribute("idCandidate", candidate.get(0));
		if (jobInterview != null) {
			jobInterviewRep.delete(jobInterview);
			return "updateByIdCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}
}
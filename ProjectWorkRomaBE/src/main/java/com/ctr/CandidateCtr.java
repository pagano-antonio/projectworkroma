package com.ctr;

import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateCommercialDataRepository;
import com.dao.CandidateRepository;
import com.dao.ContractTypeRepository;
import com.dao.EducationDegreeTypeRepository;
import com.dao.EducationRepository;
import com.dao.EmployeeRepository;
import com.dao.JobInterviewRepository;
import com.dao.SkillRepository;
import com.dao.StateJobInterviewRepository;
import com.dao.WorkExperienceRepository;

import com.model.Candidate;
import com.model.CandidateCommercialData;
import com.model.ContractType;
import com.model.Education;
import com.model.EducationDegreeType;
import com.model.Employee;
import com.model.JobInterview;
import com.model.Skill;
import com.model.StateJobInterview;
import com.model.WorkExperience;

@Controller

public class CandidateCtr {
	@Autowired
	private CandidateRepository candidateRep;
	@Autowired
	private EducationRepository educationRep;
	@Autowired
	private WorkExperienceRepository workExperienceRep;
	@Autowired
	private JobInterviewRepository jobInterviewRep;
	@Autowired
	private StateJobInterviewRepository stateJobInterviewRep;
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
	@Autowired
	private SkillRepository skillRep;
	@Autowired
	private EducationDegreeTypeRepository educationDegreeTypeRep;
	@Autowired
	private EmployeeRepository employeeRep;
	@Autowired
	private ContractTypeRepository contractTypeRep;
	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/preAddCandidateForm")
	public String preAddCandidateForm(Model model) {
		List<EducationDegreeType> listEducationDegreeType = educationDegreeTypeRep.findAll();
        model.addAttribute("listEducationDegreeType", listEducationDegreeType);
        List<Employee> listEmployee = employeeRep.findAll();
        model.addAttribute("listEmployee", listEmployee);
        List<StateJobInterview> listStateJobInterview = stateJobInterviewRep.findAll();
        model.addAttribute("listStateJobInterview", listStateJobInterview);
        List<ContractType> listContractType= contractTypeRep.findAll();
        model.addAttribute("listContractType", listContractType);
		return "addCandidateForm";
	}

	@PostMapping("/addCandidateForm")
	public String addCandidateForm(Model model, Candidate candidate, Education education, WorkExperience workExperience,
		JobInterview jobInterview, CandidateCommercialData candidateCommercialData, Skill skill, EducationDegreeType educationDegreeType) {
		candidateRep.save(candidate);
		educationRep.save(education);
		educationDegreeTypeRep.save(educationDegreeType);
		workExperienceRep.save(workExperience);
		jobInterviewRep.save(jobInterview);
		candidateCommercialDataRep.save(candidateCommercialData);
		skillRep.save(skill);
		return "success";
	}

////////////////////////////////////// DELETE BY ID  //////////////////////////////////////////////////////

	@GetMapping("/candidate/preDeleteByIdCandidate")
	public String preDeleteByIdCandidate() {
		return "candidate/deleteByIdCandidate";
	}

	@GetMapping("/candidate/deleteByIdCandidate")
	public String deleteByIdCandidate(Model model, Integer idCandidate) {
		Candidate candidate = (Candidate) candidateRep.findById(idCandidate).orElse(null);
		if (candidate != null) {
			candidateRep.delete(candidate);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

////////////////////////////////////// UPDATE //////////////////////////////////////////////////////

	@GetMapping("/preUpdateByIdCandidate")
	public String preUpdateByIdIdCandidate(Model model, @RequestParam Integer idCandidate) {
		Candidate candidate = candidateRep.findById(idCandidate).orElse(null);
		model.addAttribute("Candidate", candidate);
		return "updateByIdCandidate";
	}
	@PostMapping("/updateByIdCandidate")
	public String updateByIdCandidate(Model model, Candidate candidate) {
		candidateRep.save(candidate);
		return "success";
	}

	
////////////////////////////////////// FIND BY ID //////////////////////////////////

	@GetMapping("/candidate/preFindByIdCandidate")
	public String preFindByIdCandidate() {
		return "candidate/findByIdCandidate";
	}

	@GetMapping("/candidate/findByIdCandidate")
	public String findByIdCandidate(Model model, Integer idCandidate) {
		List<Candidate> candidate = candidateRep.findByIdCandidate(idCandidate);
		model.addAttribute("IdCandidate", candidate);
		if (candidate != null) {
			return "candidate/resultsFindByIdCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}

	}
////////////////////////////////////// FIND BY SURNAME /////////////////////////////

	@GetMapping("/candidate/preFindBySurnameCandidate")
	public String preFindBySurnameCandidate(Model model) {
		return "candidate/findBySurnameCandidate";
	}

	@GetMapping("/candidate/findBySurnameCandidate")
	public String findBySurnameCandidate(Model model, String surname) {
		List<Candidate> candidate = candidateRep.findBySurname(surname);
		model.addAttribute("SurnameCandidate", candidate);
		if (surname != null) {
			return "candidate/resultsFindBySurnameCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}

	}
////////////////////////////////////// FIND BY CITY ////////////////////////////////

	@GetMapping("/candidate/preFindByCityCandidate")
	public String preFindByCityCandidate(Model model) {
		return "candidate/findByCityCandidate";
	}

	@GetMapping("/candidate/findByCityCandidate")
	public String findByCityCandidate(Model model, String city) {
		List<Candidate> candidate = candidateRep.findByCity(city);
		model.addAttribute("CityCandidate", candidate);
		if (city != null) {
			return "candidate/resultsFindByCityCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}

	}
//////////////////////////////////////FIND BY PHONE NUMBER ////////////////////////

	@GetMapping("/candidate/preFindByPhoneCandidate")
	public String preFindByPhoneCandidate() {
		return "candidate/findByPhoneCandidate";
	}

	@GetMapping("/candidate/findByPhoneCandidate")
	public String findByPhoneCandidate(Model model, BigInteger phone) {
		List<Candidate> candidate = candidateRep.findByPhone(phone);
		model.addAttribute("PhoneCandidate", candidate);
		if (candidate != null) {
			return "candidate/resultsByPhoneCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}
//////////////////////////////////////FIND BY SKILL ///////////////////////////////

	@GetMapping("/candidate/preFindBySkillCandidate")
	public String preFindBySkillCandidate() {
		return "candidate/findBySkillCandidate";
	}

	@GetMapping("/candidate/findBySkillCandidate")
	public String findBySkillCandidate(Model model, String title) {
		List<Candidate> candidate = candidateRep.findByCandidateSkills_Skill_Title(title);
		model.addAttribute("SkillCandidate", candidate);
		if (candidate != null) {
			return "candidate/resultsBySkillCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////FIND BY ID EDUCATION DEGREE TYPE /////////////////

	@GetMapping("/candidate/preFindByEducationDegreeTypeCandidate")
	public String preFindByEducationDegreeTypeCandidate() {
		return "candidate/findByEducationDegreeTypeCandidate";
	}

	@GetMapping("/candidate/findByEducationDegreeTypeCandidate")
	public String findByEducationDegreeTypeCandidate(Model model, String description) {
		List<Candidate> candidate = candidateRep
				.findByEducations_EducationDegreeType_Description(description);
		model.addAttribute("EducationDegreeTypeCandidate", candidate);
		if (candidate != null) {
			return "candidate/resultsByEducationDegreeTypeCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

////////////////////////////////////// FIND BY ID JOB INTERVIEW FOR OUTCOME //////////////////
	
	@GetMapping("/candidate/preFindByOutcomeJobInterviewCandidate")
	public String preFindByOutcomeJobInterviewCandidate() {
		return "candidate/findByOutcomeJobInterviewCandidate";
	}

	@GetMapping("/candidate/findByOutcomeJobInterviewCandidate")
	public String findByOutcomeJobInterviewCandidate(Model model, String title, Integer outcome) {
		List<Candidate> candidate = candidateRep.findByJobInterviews_StateJobInterview_Title(title);
		//Collections.sort(candidate, Comparator.comparing(JobInterview::getOutcome));
		model.addAttribute("OutcomeCandidate", candidate);
		if (candidate != null) {
			return "candidate/resultsByOutcomeJobInterviewCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

}
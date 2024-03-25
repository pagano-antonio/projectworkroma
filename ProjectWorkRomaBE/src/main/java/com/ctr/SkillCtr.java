package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateRepository;
import com.dao.CandidateSkillRepository;
import com.dao.JobOfferSkillRepository;
import com.dao.SkillRepository;
import com.model.Candidate;
import com.model.CandidateSkill;
import com.model.JobOfferSkill;
import com.model.Skill;


@Controller

public class SkillCtr {
	@Autowired
	private SkillRepository skillRep;
	
	@Autowired
	private CandidateRepository candidateRep;
	
	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;
	
	@Autowired
	private CandidateSkillRepository candidateSkillRep;


//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preAddSkill")
	public String preAddSkill(Model model) {
		 List<Candidate> listCandidate = candidateRep.findAll();
	        model.addAttribute("listCandidate", listCandidate);
				return "job/addSkill";
	}

	@PostMapping("/job/addSkill")
	public String addSkill(Model model, Skill skill) {
		skillRep.save(skill);
		return "success";
	}

//////////////////////////////////////  DELETE BY ID   ////////////////////////////////////


	@GetMapping("/job/deleteByIdSkill")
	public String deleteByIdSkill(Model model, Integer idSkill, Integer idCandidate) {
		Skill skill = (Skill) skillRep.findById(idSkill).orElse(null);
		List<Candidate> candidate = candidateRep.findByIdCandidate(idCandidate);
		model.addAttribute("idCandidate", candidate.get(0));
		if (skill != null) {
			skillRep.delete(skill);
			return "updateByIdCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////  UPDATE   /////////////////////////////////////////

	@GetMapping("/preUpdateByIdSkill")
	public String preUpdateByIdSkill(Model model,@RequestParam Integer idSkill) {
		Skill skill = skillRep.findById(idSkill).orElse(null);
			model.addAttribute("idSkill", skill);
			List<Candidate> candidate = candidateRep.findAll();
			model.addAttribute("listIdCandidate", candidate);
			List<CandidateSkill> candidateSkill = candidateSkillRep.findAll();
			List<JobOfferSkill> jobOfferSkill = jobOfferSkillRep.findAll();
			model.addAttribute("candidateSkill", candidateSkill);
			model.addAttribute("jobOfferSkill", jobOfferSkill);
			return "updateByIdSkill";
	}
	@PostMapping("/updateByIdSkill")		
	public String updateByIdSkill(Model model,@ModelAttribute ("Skill") Skill skill, Integer idCandidateSkill, Integer idCandidate, Integer idJobOfferSkill) {
		List<CandidateSkill> candidateSkill = candidateSkillRep.findAll();
		List<JobOfferSkill> jobOfferSkill =  jobOfferSkillRep.findAll();
		Candidate candidate = (Candidate)candidateRep.findById(idCandidate).orElse(null);
		skill.setCandidateSkills(candidateSkill);
		skill.setJobOfferSkills(jobOfferSkill);
		skillRep.save(skill);
	        return "success";  
	}
}  


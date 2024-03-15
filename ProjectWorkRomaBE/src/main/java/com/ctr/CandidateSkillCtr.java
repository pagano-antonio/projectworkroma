package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateRepository;
import com.dao.CandidateSkillRepository;
import com.dao.SkillRepository;
import com.model.Candidate;
import com.model.CandidateSkill;
import com.model.Skill;

@Controller
public class CandidateSkillCtr {
	@Autowired
	private CandidateSkillRepository candidateSkillRep;
	@Autowired
	private SkillRepository skillRep;
	@Autowired
	private CandidateRepository candidateRep;

////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/candidate/preAddCandidateSkill")
	public String preAddCandidateSkill(Model model) {
		return "candidate/addCandidateSkill";
	}

	@PostMapping("/candidate/addCandidateSkill")
	public String addCandidateSkill(Model model, CandidateSkill candidateSkill) {
		candidateSkillRep.save(candidateSkill);
		return "success";
	}

//////////////////////////////////////DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/preDeleteByIdCandidateSkill")
	public String preDeleteByIdCandidateSkill() {
		return "candidate/deleteByIdCandidateSkill";
	}

	@GetMapping("/candidate/deleteByIdCandidateSkill")
	public String deleteByIdCandidateSkill(Model model, Integer idCandidateSkill) {
		CandidateSkill candidateSkill = (CandidateSkill) candidateSkillRep.findById(idCandidateSkill).orElse(null);
		if (candidateSkill != null) {
			candidateSkillRep.delete(candidateSkill);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////UPDATE //////////////////////////////////////////////////////

	@GetMapping("/candidate/preUpdateByIdCandidateSkill")
	public String preUpdateByIdCandidateSkill(Model model, @RequestParam Integer idCandidateSkill) {
		CandidateSkill candidateSkill = candidateSkillRep.findById(idCandidateSkill).orElse(null);
		model.addAttribute("candidateSkill", candidateSkill);
		List<Candidate> candidate = candidateRep.findAll();
		model.addAttribute("listIdCandidate", candidate);
		List<Skill> skill = skillRep.findAll();
		model.addAttribute("listIdSkill", skill);
		return "candidate/updateByIdCandidateSkill";

	}

	@PostMapping("/candidate/updateByIdCandidateSkill")
	public String updateByIdCandidateSkill(Model model, CandidateSkill candidateSkill) {
		candidateSkillRep.save(candidateSkill);
		return "success";

	}

//////////////////////////////////////FIND BY ID //////////////////////////////////

	@GetMapping("/candidate/preFindByIdCandidateSkill")
	public String preFindByIdCandidateSkill(Model model) {
		return "candidate/findByIdCandidateSkill";
	}

	@GetMapping("/candidate/findByIdCandidateSkill")
	public String findByIdCandidateSkill(Model model, Integer idCandidateSkill) {
		List<CandidateSkill> candidateSkill = candidateSkillRep.findByIdCandidateSkill(idCandidateSkill);
		model.addAttribute("idCandidateSkill", candidateSkill);
		if (candidateSkill != null) {
			return "candidate/resultsFindByIdCandidateSkill";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}

	}
}
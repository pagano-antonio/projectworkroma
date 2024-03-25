package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateCommercialDataRepository;
import com.dao.CandidateRepository;
import com.model.Candidate;
import com.model.CandidateCommercialData;

@Controller
public class CandidateCommercialDataCtr {
	
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
    @Autowired
	private CandidateRepository candidateRep;
	  
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/candidate/preAddCandidateCommercialData")
	public String preAddCandidateCommercialData(Model model) {
		 List<Candidate> listCandidate = candidateRep.findAll();
	        model.addAttribute("listCandidate", listCandidate);
			return "candidate/addCandidateCommercialData";
	}

	@PostMapping("/candidate/addCandidateCommercialData")
	public String addCandidateCommercialData(Model model, CandidateCommercialData candidateCommercialData) {
		candidateCommercialDataRep.save(candidateCommercialData);
		return "success";
	}

//////////////////////////////////////DELETE BY ID  ////////////////////////////////////


	@GetMapping("/candidate/deleteByIdCandidateCommercialData")
	public String deleteByIdCandidateCommercialData(Model model, Integer idCandidateCommercialData, Integer idCandidate) {
		CandidateCommercialData candidateCommercialData = (CandidateCommercialData) candidateCommercialDataRep.findById(idCandidateCommercialData).orElse(null);
		List<Candidate> candidate = candidateRep.findByIdCandidate(idCandidate);
		model.addAttribute("idCandidate", candidate.get(0));
		if (candidateCommercialData != null) {
			candidateCommercialDataRep.delete(candidateCommercialData);
			return "updateByIdCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

////////////////////////////////////// UPDATE //////////////////////////////////////////////////////

	@GetMapping("/preUpdateByIdCandidateCommercialData")
	public String preUpdateByIdCandidateCommercialData(Model model, @RequestParam Integer idCandidateCommercialData) {
		CandidateCommercialData candidateCommercialData = candidateCommercialDataRep.findById(idCandidateCommercialData).orElse(null);
		model.addAttribute("candidateCommercialData", candidateCommercialData);
		List<Candidate> candidate = candidateRep.findAll();
		model.addAttribute("listIdCandidate", candidate);
		return "updateByIdCandidateCommercialData";

	}  

	@PostMapping("/updateByIdCandidateCommercialData")
	public String updateByIdCandidateCommercialData(Model model, @ModelAttribute ("candidateCommercialData") CandidateCommercialData candidateCommercialData, Integer  idCandidate) { 
		Candidate candidate = (Candidate)candidateRep.findById(idCandidate).orElse(null);
		candidateCommercialData.setCandidate(candidate);
    	candidateCommercialDataRep.save(candidateCommercialData);
	    return "success";   	  
	}  

////////////////////////////////////// FIND BY ID //////////////////////////////////

	 @GetMapping("/candidate/preFindByIdCandidateCommercialData")
	    public String preFindByIdCandidateCommercialData() {
	        return "candidate/findByIdCandidateCommercialData";
	    }

	    @GetMapping("/candidate/findByIdCandidateCommercialData")
	    public String findByIdCandidateCommercialData(Model model, @RequestParam Integer idCandidateCommercialData) {
	        CandidateCommercialData candidateCommercialData = (CandidateCommercialData) candidateCommercialDataRep.findById(idCandidateCommercialData).orElse(null);
	        model.addAttribute("idCandidateCommercialData", candidateCommercialData);
	        if (candidateCommercialData != null) {
	            return "candidate/resultsFindByIdCandidateCommercialData";
	        } else {
	            String errorMessage = "ops!";
	            model.addAttribute("errorMessage", errorMessage);
	            return "error";
	        }
	    }
	}



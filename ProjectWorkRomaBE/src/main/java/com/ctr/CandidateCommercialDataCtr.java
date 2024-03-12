package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateCommercialDataRepository;
import com.dao.CandidateRepository;
import com.model.Candidate;
import com.model.CandidateCommercialData;
;

@Controller
@RequestMapping
public class CandidateCommercialDataCtr {
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
	 @Autowired
	    private CandidateRepository candidateRep;
	  
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/candidate/preAddCandidateCommercialData")
	public String preAddCandidateCommercialData(Model model) {
		return "candidate/addCandidateCommercialData";
	}

	@PostMapping("/candidate/addCandidateCommercialData")
	public String addCandidateCommercialData(Model model, CandidateCommercialData candidateCommercialData) {
		candidateCommercialDataRep.save(candidateCommercialData);
		return "success";
	}

//////////////////////////////////////DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/preDeleteByIdCandidateCommercialData")
	public String preDeleteByIdCandidateCommercialData() {
		return "candidate/deleteByIdCandidateCommercialData";
	}

	@GetMapping("/candidate/deleteByIdCandidateCommercialData")
	public String deleteByIdCandidateCommercialData(Model model, Integer idCandidateCommercialData) {
		CandidateCommercialData candidateCommercialData = (CandidateCommercialData) candidateCommercialDataRep
				.findById(idCandidateCommercialData).orElse(null);
		if (candidateCommercialData != null) {
			candidateCommercialDataRep.delete(candidateCommercialData);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

////////////////////////////////////// UPDATE //////////////////////////////////////////////////////

	@GetMapping("/candidate/preUpdateByIdCandidateCommercialData")
	public String preUpdateByIdCandidateCommercialData(Model model,@RequestParam Integer idCandidateCommercilData) {
		CandidateCommercialData candidateCommercialData = candidateCommercialDataRep.findById(idCandidateCommercilData).orElse(null);
		 List<Candidate> candidate = candidateRep.findAll();
	        model.addAttribute("listIdCandidate", candidate);
	        model.addAttribute("candidateCommercialData", candidateCommercialData); 
	        return "candidate/updateByIdCandidateCommercialData";     
	     
	}   

	@PostMapping("/candidate/updateByIdCandidateCommercialData")
	public String updateByIdCandidateCommercialData(Model model, CandidateCommercialData candidateCommercialData) { 
	        candidateCommercialDataRep.save(candidateCommercialData);
	        return "success";   
	  
	}  

////////////////////////////////////// FIND BY ID //////////////////////////////////

	@GetMapping ("/candidate/preFindByIdCandidateCommercialData")
	public String preFindByIdCandidateCommercialData(Model model) {
		return "findByIdCandidateCommercialData";
	}
	
	@GetMapping("/candidate/FindByIdCandidateCommercialData")  
	public String findByCity(Model model, Integer idCandidateCommercialData) {
		List<CandidateCommercialData> candidateCommercialData = candidateCommercialDataRep.findByIdCandidateCommercialData(idCandidateCommercialData);
		model.addAttribute("candidateCommercialData", candidateCommercialData);
		if (idCandidateCommercialData != null) {
			return "candidate/resultsFindByIdCandidateCommercialData"; 
		}else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
			}
		   
	}
	}

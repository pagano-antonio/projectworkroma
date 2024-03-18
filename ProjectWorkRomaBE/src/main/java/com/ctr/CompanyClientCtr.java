package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CompanyClientRepository;
import com.model.Candidate;
import com.model.CompanyClient;

@Controller
public class CompanyClientCtr {
	@Autowired
	private CompanyClientRepository companyClientRep;

////////////////////////////////////// ADD METHOD //////////////////////////////////////////
	
	@GetMapping("/company/preAddCompanyClient")
	public String preCompanyClient(Model model) {
		return "company/addCompanyClient";
	}

	@PostMapping("/company/addCompanyClient")
	public String addCompanyClient(Model model, CompanyClient companyClient) {
		companyClientRep.save(companyClient);
		return "success";
	}

//////////////////////////////////////  DELETE BY ID   ////////////////////////////////////

	@GetMapping("/company/preDeleteByIdCompanyClient")
	public String preDeleteByIdCompanyClient() {
		return "company/deleteByIdCompanyClient";
	}

	@GetMapping("/company/deleteByIdCompanyClient")
	public String deleteByIdCompanyClient(Model model, Integer idCompanyClient) {
		CompanyClient companyClient = (CompanyClient) companyClientRep.findById(idCompanyClient).orElse(null);
		if (companyClient != null) {
			companyClientRep.delete(companyClient);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////  UPDATE   /////////////////////////////////////////
	
	
	@GetMapping("/preUpdateByIdCompanyClient")
	public String preUpdateByIdCompanyClient(Model model, @RequestParam Integer idCompanyClient) {
		CompanyClient companyClient = (CompanyClient)companyClientRep.findById(idCompanyClient).orElse(null);
		model.addAttribute("idCompanyClient", companyClient);
		companyClientRep.save(companyClient);
		return "updateByIdCompanyClient";
		
	}

	@PostMapping("/updateByIdCompanyClient")
	public String updateByIdCompanyClient(Model model, CompanyClient companyClient) {
		companyClientRep.save(companyClient);
		return "success";
	}
 
////////////////////////////////////// FIND BY ID  ///////////////////////////////////////

	@GetMapping("/company/preFindByIdCompanyClient")
	public String preFindByIdCompanyClient() {
		return "company/findByIdCompanyClient";
	}

	@GetMapping("/company/findByIdCompanyClient")
	public String findByIdCompanyClient(Model model, Integer idCompanyClient) {
		List<CompanyClient> companyClient = companyClientRep.findByIdCompanyClient(idCompanyClient);
		model.addAttribute("IdCompanyClient", companyClient);
		if (companyClient != null) {
			return "company/resultsFindByIdCompanyClient";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}

	}

////////////////////////////////////// FIND BY NAME ///////////////////////////////////////

	@GetMapping("/company/preFindByNameCompanyClient")
	public String preFindByNameCompanyClient() {
		return "company/findByNameCompanyClient";
	}

	@GetMapping("/company/findByNameCompanyClient")
	public String findByName(Model model, @RequestParam String name) {
		List<CompanyClient> companyClient = companyClientRep.findByName(name);
		model.addAttribute("CompanyClient", companyClient);
		if (companyClient != null) {
			return "company/resultsByNameCompanyClient";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}
	
////////////////////////////////////// FIND BY CITY ////////////////////////////////////////
	
	@GetMapping("/company/preFindByCityCompanyClient")
	public String preFindByCityCompanyClient() {
		return "company/findByCityCompanyClient";
	}

	@GetMapping("/company/findByCityCompanyClient")
	public String findByCityCompanyClient(Model model, @RequestParam String city) {
		List<CompanyClient> companyClient = companyClientRep.findByCity(city);
		model.addAttribute("CompanyClient", companyClient);
		if (companyClient != null) {
			return "company/resultsByCityCompanyClient";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}
}
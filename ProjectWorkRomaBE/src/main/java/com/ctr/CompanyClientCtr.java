package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CompanyClientRepository;
import com.model.CompanyClient;


@Controller  
@RequestMapping
public class CompanyClientCtr {
	@Autowired
	private CompanyClientRepository companyClientRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/company/preAddCompanyClient")    
	public String preCompanyClient(Model model) {
		return "company/addCompanyClient";
	}

	@PostMapping("/company/addCompanyClient") 
	public String addCompanyClient(Model model, CompanyClient companyClient) {
		companyClientRep.save(companyClient); 
		return "success";
	}
	
//////////////////////////////////////  SEARCH BY ID  //////////////////////////////////////////////////////////

	
	@GetMapping("/company/preSearchByIdCompanyClient")
	public String preSearchByIdCompanyClient() {
		return "company/SearchIdCompanyClient";	
		}

	@GetMapping("/company/SearchByIdCompanyClient")
	public String searchByIdCompanyClient(Model model, @RequestParam int idCompanyClient) {
		CompanyClient companyClient = (CompanyClient) companyClientRep.findById(idCompanyClient).orElse(null);
		if (companyClient != null) {
			model.addAttribute("idCompanyClient", companyClient);
			return "company/SearchByIdCompanyClient";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

	@PostMapping("/company/SearchByIdCompanyClient")
	public String searchByIdCompanyClient (Model model,CompanyClient companyClient) {
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
			return "errore";
		}
	}
	
}
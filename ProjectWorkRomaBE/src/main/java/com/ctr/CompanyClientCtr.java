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

//////////////////////////////////////  UPDATE   ////////////////////////////////////

	@GetMapping("/company/preUpdateByIdCompanyClient")
	public String preUpdateByIdCompanyClient() {
		return "company/updateIdCompanyClient";
	}

	@GetMapping("/company/updateByIdCompanyClient")
	public String updateByIdCompanyClient(Model model, @RequestParam int idCompanyClient) {
		CompanyClient companyClient = (CompanyClient) companyClientRep.findById(idCompanyClient).orElse(null);
		if (companyClient != null) {
			model.addAttribute("idCompanyClient", companyClient);
			return "company/updateCompanyClient";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
////////////////////////////////////// FIND BY ID  //////////////////////////////////////////////////////////

	@GetMapping("/company/preFindByIdCompanyClient")
	public String preFindByIdCompanyClient() {
		return "company/findIdCompanyClient";
	}

	@GetMapping("/company/findByIdCompanyClient")
	public String findByIdCompanyClient(Model model, @RequestParam int idCompanyClient) {
		CompanyClient companyClient = (CompanyClient) companyClientRep.findById(idCompanyClient).orElse(null);
		if (companyClient != null) {
			model.addAttribute("idCompanyClient", companyClient);
			return "company/findByIdCompanyClient";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

	@PostMapping("/company/updateCompanyClient")
	public String updateCompanyClient(Model model, CompanyClient companyClient) {
		companyClientRep.save(companyClient);
		return "success";
	}

//////////////////////////////////////FIND BY NAME //////////////////////////////////////////////////////////

	@GetMapping("/company/preFindByNameInCompanyClient")
	public String preFindByNameInCompanyClient() {
		return "company/findByNameInCompanyClient";
	}

	@GetMapping("/company/findByNameInCompanyClient")
	public String findByNameInCompanyClient(Model model, @RequestParam String name) {
		List<CompanyClient> companyClient = companyClientRep.findByNameInCompanyClient(name);
		model.addAttribute("CompanyClient", companyClient);
		if (companyClient != null) {
			return "company/resultsByAddressInCompanyClient";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
////////////////////////////////////// FIND BY CITY //////////////////////////////////////////////////////////


}
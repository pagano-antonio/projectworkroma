package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CompanyClientRepository;
import com.model.CompanyClient;

@RestController
@RequestMapping("CompanyClientRest")
public class CompanyClientRest {
	
	@Autowired
	private CompanyClientRepository companyClientRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	 @PostMapping("addCompanyClient") 
	 public String addCompanyClient(@RequestBody CompanyClient companyClient) {
		 companyClientRep.save(companyClient);
		 return "companyClientAdded"; 
	 }
	 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	 
	 @PutMapping("updateCompanyClient") 
		public String updateCompanyClient(@RequestBody CompanyClient companyClient) {
		 companyClientRep.save(companyClient);
			 return "companyClientUpdated"; 
		 }
	 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
		
	 @DeleteMapping("deleteCompanyClient") 
		public String deleteCompanyClient(@RequestBody CompanyClient companyClient) {
		 companyClientRep.delete(companyClient);
			 return "companyClient"; 
		 }

}
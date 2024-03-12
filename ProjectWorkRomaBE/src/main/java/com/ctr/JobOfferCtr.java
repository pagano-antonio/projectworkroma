package com.ctr;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CompanyClientRepository;
import com.dao.ContractTypeRepository;
import com.dao.JobOfferRepository;
import com.model.Candidate;
import com.model.CompanyClient;
import com.model.ContractType;
import com.model.JobOffer;

@Controller
public class JobOfferCtr {

    @Autowired
    private JobOfferRepository jobOfferRep;
    @Autowired
    private CompanyClientRepository companyClientRep;
    @Autowired
    private ContractTypeRepository contractTypeRep;
    
//////////////////////////////////////  ADD METHOD //////////////////////////////////////////////////////////

    @GetMapping("/job/preAddJobOffer")
    public String preAddJobOffer(Model model) {
        return "job/addJobOffer";
    }

    @PostMapping("/job/addJobOffer")
    public String addJobOffer(Model model, JobOffer jobOffer) {
        jobOfferRep.save(jobOffer);
        return "success";
    }

//////////////////////////////////////  UPDATE METHOD //////////////////////////////////////////////////////////

    @GetMapping("/job/preUpdateByIdJobOffer")
    public String preUpdateByIdJobOffer(Model model,@RequestParam Integer idJobOffer) {
    	JobOffer jobOffer = jobOfferRep.findById(idJobOffer).orElse(null);
            model.addAttribute("idJobOffer", jobOffer);
            List<CompanyClient> companyClient = companyClientRep.findAll();
            List<ContractType> contractType = contractTypeRep.findAll();
            model.addAttribute("listIdCompanyClient", companyClient);
            model.addAttribute("listIdContractType", contractType); 
            return "job/updateByIdJobOffer";     
      
    }   

    @PostMapping("/job/updateByIdJobOffer")
    public String updateByIdJobOffer(Model model,@ModelAttribute ("jobOffer") JobOffer jobOffer, Integer  idCompanyClient, Integer idContractType) {
    	CompanyClient companyClient = (CompanyClient)companyClientRep.findById(idCompanyClient).orElse(null);
    	ContractType contractType = (ContractType)contractTypeRep.findById(idContractType).orElse(null);
      jobOffer.setCompanyClient(companyClient);
      jobOffer.setContractType(contractType); 
            jobOfferRep.save(jobOffer);
            
            return "success";   
      
    }  

//////////////////////////////////////  DELETE BY ID  //////////////////////////////////////////////////////////

    @GetMapping("/job/preDeleteByIdJobOffer")
    public String preDeleteByIdJobOffer() {
        return "job/deleteByIdJobOffer"; 
    }

    @GetMapping("/job/deleteByIdJobOffer")
    public String deleteByIdJobOffer(Model model, @RequestParam Integer idJobOffer) {
        JobOffer jobOffer = jobOfferRep.findById(idJobOffer).orElse(null);
        if (jobOffer != null) {
            jobOfferRep.delete(jobOffer);
            return "success";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "error"; 
        }
    }

//////////////////////////////////////  FIND BY TITLE ///////////////////////////////////////////////////////////

    @GetMapping("/job/preFindByTitleJobOffer")
    public String preFindByTitleJobOffer() {
        return "job/findByTitleJobOffer";
    }

    @GetMapping("/job/findByTitleJobOffer")
    public String findByTitle(Model model, @RequestParam String title) {
        List<JobOffer> jobOffer = jobOfferRep.findByTitle(title);
        model.addAttribute("JobOfferTitle", jobOffer);
        if (jobOffer != null) {
            return "job/resultsFindByTitleJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "error";
        }
    }

 ////////////////////////////////////////////  FIND BY START AND END DATE  ////////////////////////////////////////

    @GetMapping("/job/preFindByStartDateAndEndDate")
    public String preFindByStartDateAndEndDate() {
        return "job/findByStartDateAndEndDate";
    }

    @GetMapping("/job/findByStartDateAndEndDate")
    public String findByStartDateAndEndDate(Model model, @RequestParam Date startDate, @RequestParam Date endDate) {
        List<JobOffer> jobOffer = jobOfferRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
        model.addAttribute("JobOffer", jobOffer);
        model.addAttribute("startDateJobOffer", startDate);
        model.addAttribute("endDateJobOffer", endDate);
		if (jobOffer != null) {
			return "job/resultsfindByStartDateAndEndDate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

////////////////////////////////////////////  FIND BY ID COMPANY CLIENT  ////////////////////////////////////////////

    @GetMapping("/job/preFindByIdCompanyClientJobOffer")
    public String preFindByIdCompanyClientJobOffer() {
        return "job/findByIdCompanyClientJobOffer";
    }

    @GetMapping("/job/findByCompanyClientJobOffer")
    public String findByCompanyClient(Model model, @RequestParam Integer idCompanyClient) {
        List<JobOffer> jobOffer = jobOfferRep.findByCompanyClient_IdCompanyClient(idCompanyClient);
        model.addAttribute("idCompanyClientJobOffer", jobOffer);
        if (jobOffer != null) {
            return "job/resultsfindByCompanyClientJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "error";
        }
    }

////////////////////////////////////////////  FIND BY MIN RAL  //////////////////////////////////////////////////////////

    @GetMapping("/job/preFindByMinRalJobOffer")
    public String preFindByMinRalJobOffer() {
        return "job/findByMinRalJobOffer";
    }

    @GetMapping("/job/findByMinRalJobOffer")
    public String findByMinRalJobOffer(Model model, @RequestParam Integer minRal) {
        List<JobOffer> jobOffer = jobOfferRep.findByMinRal(minRal);
        model.addAttribute("minRalJobOffer", jobOffer);
        if (jobOffer != null) {
        	return "job/resultsFindByMinRalJobOffer";
        }else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "error";
        }
    }

////////////////////////////////////////////////  FIND BY MAX RAL  /////////////////////////////////////////////////////////

    @GetMapping("/job/preFindByMaxRalJobOffer")
    public String preFindByMaxRalJobOffer() {
        return "job/findByMaxRalJobOffer";
    }

    @GetMapping("/job/findByMaxRalJobOffer")
    public String findByMaxRalJobOffer(Model model, @RequestParam Integer maxRal) {
        List<JobOffer> jobOffer = jobOfferRep.findByMaxRal(maxRal);
        model.addAttribute("maxRalJobOffer", jobOffer);
        if (jobOffer != null) {
        	return "job/resultsFindByMaxRalJobOffer";
        }else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "error";
        }
    }

////////////////////////////////////////////////////  FIND BY CONTRACT TYPE  /////////////////////////////////////////////

    @GetMapping("/job/preFindByContractTypeJobOffer")
    public String preFindByContractTypeJobOffer() {
        return "job/findByContractTypeJobOffer";
    }

    @GetMapping("/job/findByContractTypeJobOffer")
    public String findByContractTypeJobOffer(Model model, @RequestParam Integer idContractType) {
        List<JobOffer> jobOffer = jobOfferRep.findByContractType_IdContractType(idContractType);
        model.addAttribute("JobOfferContractType", jobOffer);
        if (jobOffer != null) {
            return "job/resultsFindByContractTypeJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "error";
        }
	}

/////////////////////////////////////////////////  FIND BY SKILL /////////////////////////////////////////////////////

    @GetMapping("/job/preFindByIdJobOfferSkillJobOffer")
    public String preFindByIdJobOfferSkillJobOffer() {
        return "job/findByIdJobOfferSkillJobOffer";
    }

    @GetMapping("/job/findByIdJobOfferSkillJobOffer")
    public String findByIdJobOfferSkillJobOffer(Model model, @RequestParam Integer IdJobOfferSkill) {
        List<JobOffer> jobOffer = jobOfferRep.findByIdJobOfferSkill(IdJobOfferSkill);
        model.addAttribute("JobOfferSkillJobOffer", jobOffer);
        if (jobOffer != null) {
            return "job/resultsFindByIdJobOfferSkillJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "error";
        }
    }
}
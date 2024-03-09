package com.ctr;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dao.JobOfferRepository;
import com.model.CompanyClient;
import com.model.ContractType;
import com.model.JobOffer;

@Controller
@RequestMapping
public class JobOfferCtr {

    @Autowired
    private JobOfferRepository jobOfferRep;

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
    public String preUpdateByIdIdJobOffer() {
        return "job/updateIdJobOffer";
    }

    @GetMapping("/job/updateByIdJobOffer")
    public String updateByIdJobOffer(Model model, @RequestParam Integer idJobOffer) {
        JobOffer jobOffer = jobOfferRep.findById(idJobOffer).orElse(null);
        if (jobOffer != null) {
            model.addAttribute("idJobOffer", jobOffer);
            return "job/updateByIdJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "errore";
        }
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
            return "errore";
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
            return "errore";
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
			return "errore";
		}
	}

////////////////////////////////////////////  FIND BY ID COMPANY CLIENT  ////////////////////////////////////////////

    @GetMapping("/job/preFindByIdCompanyClientJobOffer")
    public String preFindByIdCompanyClientJobOffer() {
        return "job/findByIdCompanyClientJobOffer";
    }

    @GetMapping("/job/findByCompanyClientJobOffer")
    public String findByCompanyClient(Model model, @RequestParam Integer idCompanyClient) {
        List<CompanyClient> jobOffer = jobOfferRep.findByIdCompanyClient(idCompanyClient);
        model.addAttribute("idCompanyClientJobOffer", jobOffer);
        if (jobOffer != null) {
            return "job/resultsfindByCompanyClientJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "errore";
        }
    }

////////////////////////////////////////////  FIND BY MIN RAL  //////////////////////////////////////////////////////////

    @GetMapping("/preFindByMinRalJobOffer")
    public String preFindByMinRalJobOffer() {
        return "job/preFindByMinRalJobOffer";
    }

    @GetMapping("/job/findByMinRalJobOffer")
    public String findByMinRalJobOffer(Model model, @RequestParam Integer minRal) {
        List<JobOffer> jobOffer = jobOfferRep.findByMinRal(minRal);
        model.addAttribute("jobOffer", jobOffer);
        model.addAttribute("minRalJobOffer", minRal);
        if (jobOffer != null) {
        	return "job/resultsFindByMinRalJobOffer";
        }else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "errore";
        }
    }

////////////////////////////////////////////////  FIND BY MAX RAL  /////////////////////////////////////////////////////////

    @GetMapping("/job/preFindByMaxRalJobOffer")
    public String preFindByMaxRalJobOffer() {
        return "job/preFindByMaxRalJobOffer";
    }

    @GetMapping("/job/findByMaxRalJobOffer")
    public String findByMaxRalJobOffer(Model model, @RequestParam Integer maxRal) {
        List<JobOffer> jobOffer = jobOfferRep.findByMaxRal(maxRal);
        model.addAttribute("jobOffer", jobOffer);
        model.addAttribute("maxRalJobOffer", maxRal);
        if (jobOffer != null) {
        	return "job/resultsFindByMaxRalJobOffer";
        }else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "errore";
        }
    }

////////////////////////////////////////////////////  FIND BY CONTRACT TYPE  /////////////////////////////////////////////

    @GetMapping("/job/preFindByContractTypeJobOffer")
    public String preFindByContractTypeJobOffer() {
        return "job/findByContractTypeJobOffer";
    }

    @GetMapping("/job/findByContractTypeJobOffer")
    public String findByContractTypeJobOffer(Model model, @RequestParam Integer IdContractType) {
        List<ContractType> jobOffer = jobOfferRep.findByIdContractType(IdContractType);
        model.addAttribute("JobOffer", jobOffer);
        if (jobOffer != null) {
            return "job/resultsFindByContractTypeJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "errore";
        }
    }

/////////////////////////////////////////////////  FIND BY SKILL /////////////////////////////////////////////////////

    @GetMapping("/job/preFindByJobOfferSkillJobOffer")
    public String preFindByJobOfferSkillJobOffer() {
        return "job/findByJobOfferSkillJobOffer";
    }

    @GetMapping("/job/findByJobOfferSkillJobOffer")
    public String findByJobOfferSkillJobOffer(Model model, @RequestParam Integer IdJobOfferSkill) {
        List<JobOffer> jobOffer = jobOfferRep.findByIdJobOfferSkill(IdJobOfferSkill);
        model.addAttribute("JobOfferSkillJobOffer", jobOffer);
        if (jobOffer != null) {
            return "job/resultsFindByJobOfferSkillJobOffer";
        } else {
            String errorMessage = "ops!";
            model.addAttribute("errorMessage", errorMessage);
            return "errore";
        }
    }
}
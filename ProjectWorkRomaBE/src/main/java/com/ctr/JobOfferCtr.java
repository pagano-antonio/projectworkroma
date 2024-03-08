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
import com.model.JobOfferSkill;
import com.model.JobOffer;

@Controller
@RequestMapping
public class JobOfferCtr {

	@Autowired
	private JobOfferRepository jobOfferRep;

//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preAddJobOffer")
	public String preAddJobOffer(Model model) {
		return "job/addJobOffer";
	}

	@PostMapping("/job/addJobOffer")
	public String addJobOffer(Model model, JobOffer jobOffer) {
		jobOfferRep.save(jobOffer);
		return "success";
	}

//////////////////////////////////////UPDATE METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preUpdateByIdJobOffer")
	public String preUpdateByIdIdJobOffer() {
		return "job/updateIdJobOffer";
	}

	@GetMapping("/job/updateByIdJobOffer")
	public String updateByIdJobOffer(Model model, Integer idJobOffer) {
		JobOffer jobOffer = (JobOffer) jobOfferRep.findById(idJobOffer).orElse(null);
		if (jobOffer != null) {
			model.addAttribute("idJobOffer", jobOffer);
			return "job/updateJobOffer";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//////////////////////////////////////DELETE BY ID //////////////////////////////////////////////////////////

	@GetMapping("/job/preDeleteByIdJobOffer")
	public String preDeleteByIdJobOffer() {
		return "job/deleteByIdJobOffer";
	}

	@GetMapping("/job/deleteByIdJobOffer")
	public String deleteByIdJobOffer(Model model, Integer idJobOffer) {
		JobOffer jobOffer = (JobOffer) jobOfferRep.findById(idJobOffer).orElse(null);
		if (jobOffer != null) {
			jobOfferRep.delete(jobOffer);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//////////////////////////////////////FIND BY TITLE /////////////////////////////

	@GetMapping("/job/preFindByTitleJobOffer")
	public String preFindByTitleJobOffer() {
		return "job/findByTitleJobOffer";
	}

	@GetMapping("/job/findByTitleJobOffer")
	public String findByTitle(Model model, String title) {
		List<JobOffer> jobOffer = jobOfferRep.findByTitle(title);
		model.addAttribute("JobOffer", jobOffer);
		if (jobOffer != null) {
			return "company/resultsfindByTitleJobOffer";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//////////////////////////////////////FIND BY START AND END DATE ////////////////

	@GetMapping("/job/preFindByStartDateAndEndDate")
	public String preFindByStartDateAndEndDate() {
		return "job/findByStartDateAndEndDate";
	}

	@GetMapping("/job/findByStartDateAndEndDate")
	public String findByStartDateAndEndDate(Model model, Date startDate, Date endDate) {
		List<JobOffer> jobOffer = jobOfferRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
		model.addAttribute("JobOffer", jobOffer);
		model.addAttribute("startDateJobOffer", startDate);
		model.addAttribute("endDateJobOffer", endDate);
		return "job/resultsfindByStartDateAndEndDate";
	}

//////////////////////////////////////FIND BY ID COMPANY CLIENT /////////////////

	@GetMapping("/job/preFindByIdCompanyClientJobOffer")
	public String preFindByIdCompanyClientJobOffer() {
		return "job/findByIdCompanyClientJobOffer";
	}

	@GetMapping("/job/findByIdCompanyClientJobOffer")
	public String findByIdCompanyClient(Model model, Integer idCompanyClient) {
		List<CompanyClient> jobOffer = jobOfferRep.findById(idCompanyClient);
		model.addAttribute("idCompanyClientJobOffer", jobOffer);
		if (jobOffer != null) {
			return "job/resultsfindByIdCompanyClientJobOffer";
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//////////////////////////////////////FIND BY MIN RAL/ MAX RAL RANGE //////////////////

	@GetMapping("/job/preFindByMinRalMaxRalRangeJobOffer")
	public String preFindByMinRalMaxRalRangeJobOffer() {
		return "job/preFindByMinRalMaxRalRangeJobOffer";
	}

	@GetMapping("/job/findByMinRalMaxRalRangeJobOffer")
	public String findByMinRalMaxRalRangeJobOffer(Model model, Integer minRal, Integer maxRal) {
		List<JobOffer> jobOffer = jobOfferRep.findByRalBetween(minRal, maxRal);
		model.addAttribute("jobOffer", jobOffer);
		model.addAttribute("minRalJobOffer", minRal);
		model.addAttribute("maxRalJobOffer", maxRal);
		return "job/resultsFindByMinRalMaxRalRangeJobOffer";
	}

//////////////////////////////////////FIND BY MIN RAL //////////////////

	@GetMapping("/job/preFindByMinRalJobOffer")
	public String preFindByMinRalJobOffer() {
		return "job/preFindByMinRalJobOffer";
	}

	@GetMapping("/job/findByMinRalJobOffer")
	public String findByMinRalJobOffer(Model model, Integer minRal) {
		List<JobOffer> jobOffer = jobOfferRep.findByMinRal(minRal);
		model.addAttribute("jobOffer", jobOffer);
		model.addAttribute("minRalJobOffer", minRal);
		return "job/resultsFindByMinRalJobOffer";
	}

//////////////////////////////////////FIND BY MIN RAL //////////////////

	@GetMapping("/job/preFindByMaxRalJobOffer")
	public String preFindByMaxRalJobOffer() {
		return "job/preFindByMaxRalJobOffer";
	}

	@GetMapping("/job/findByMaxRalJobOffer")
	public String findByMaxRalJobOffer(Model model, Integer maxRal) {
		List<JobOffer> jobOffer = jobOfferRep.findByMaxRal(maxRal);
		model.addAttribute("jobOffer", jobOffer);
		model.addAttribute("maxRalJobOffer", maxRal);
		return "job/resultsFindByMaxRalJobOffer";
	}
//////////////////////////////////////FIND BY CONTRACT TYPE ////////////////////

	@GetMapping("/job/preFindByContractTypeJobOffer")
	public String preFindByContractTypeJobOffer() {
		return "job/findByContractTypeJobOffer";
	}

	@GetMapping("/job/findByContractTypeJobOffer")
	public String findByContractTypeJobOffer(Model model, Integer IdContractType) {
		List<ContractType> jobOffer = jobOfferRep.findById(IdContractType);
		model.addAttribute("JobOffer", jobOffer);
		if (jobOffer != null) {
			return "job/resultsFindByContractTypeJobOffer";
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
//////////////////////////////////////FIND BY SKILL ////////////////////////////

	@GetMapping("/job/preFindByJobOfferSkillJobOffer")
	public String preFindByJobOfferSkillJobOffer() {
		return "job/findByJobOfferSkillJobOffer";
	}

	@GetMapping("/job/findByJobOfferSkillJobOffer")
	public String findByJobOfferSkillJobOffer(Model model, Integer IdJobOfferSkill) {
		List<JobOfferSkill> jobOffer = jobOfferRep.findById(IdJobOfferSkill);
		model.addAttribute("JobOfferSkillJobOffer", jobOffer);
		if (jobOffer != null) {
			return "job/resultsFindByJobOfferSkillJobOffer";
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
}

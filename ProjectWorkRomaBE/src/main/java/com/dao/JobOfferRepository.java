package com.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.JobOffer;
import com.model.CompanyClient;
import com.model.ContractType;

@Repository
public interface JobOfferRepository extends JpaRepository<JobOffer, Integer>{

	List<JobOffer> findByTitle(String title);

	List<JobOffer> findByStartDateAfterAndEndDateBefore(Date startDate, Date endDate);

	List<JobOffer> findByMinRal(Integer minRal);
	
	List<JobOffer> findByMaxRal(Integer maxRal);
	
	List<JobOffer> findByContractType_IdContractType(Integer idContractType);

	List<JobOffer> findByCompanyClient_IdCompanyClient(Integer idCompanyClient);

	List<JobOffer> findByJobOfferSkills_skill_idSkill(Integer idSkill);

}

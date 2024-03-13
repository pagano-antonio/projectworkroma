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

	@Query("SELECT j FROM JobOffer j WHERE  j.startDate >= :startDate AND j.endDate <= :endDate")
	List<JobOffer> findByStartDateAfterAndEndDateBefore(Date startDate, Date endDate);
	
	List<JobOffer> findByMinRal(Integer minRal);
	
	List<JobOffer> findByMaxRal(Integer maxRal);

	List<JobOffer> findByContractType_Title(String title);

	List<JobOffer> findByCompanyClient_Name(String name);

	List<JobOffer> findByJobOfferSkills_skill_Title(String title);

	

}

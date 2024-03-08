package com.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.JobOffer;
import com.model.CompanyClient;
import com.model.ContractType;

@Repository
public interface JobOfferRepository extends JpaRepository<JobOffer, Integer>{

	List<JobOffer> findByTitle(String title);

	List<CompanyClient> findByIdCompanyClientJobOffer(Integer idCompanyClient);

	List<ContractType> findByIdContractTypeJobOffer(Integer idCompanyClient);

	List<JobOffer> findByRalBetween(Integer minRal, Integer maxRal);

	List<JobOffer> findByStartDateAfterAndEndDateBefore(Date startDate, Date endDate);

	List<JobOffer> findByMinRal(Integer minRal);
	
	List<JobOffer> findByMaxRal(Integer maxRal);

}

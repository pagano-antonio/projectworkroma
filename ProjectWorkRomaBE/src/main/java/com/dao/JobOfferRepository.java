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

	@Query(value ="SELECT j FROM JobOffer j WHERE j.companyClient.idCompanyClient=:idCompanyClient")
	List<CompanyClient> findByIdCompanyClient(@Param("idCompanyClient")Integer idCompanyClient);
	
	@Query(value ="SELECT j FROM JobOffer j WHERE j.contractType.idContractType=:idContractType")
	List<ContractType> findByIdContractType(@Param("idContractType")Integer idContractType);
	
	@Query(value = "SELECT j FROM JobOffer j JOIN j.jobOfferSkills s WHERE s.idJobOfferSkill = :idJobOfferSkill")
	List<JobOffer> findByIdJobOfferSkill(@Param("idJobOfferSkill") Integer idJobOfferSkill);
}

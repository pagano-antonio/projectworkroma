package com.dao;

import java.math.BigInteger;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.model.Candidate;
import com.model.JobInterview;
import com.model.Skill;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Integer>{

	List<Candidate> findByIdCandidate(Integer idCandidate);

	List<Candidate> findBySurname(String surname);

	List<Candidate> findByCity(String city);

	List<Candidate> findByEducations_EducationDegreeType_IdEducationDegreeType(Integer idEducationDegreeType);

	List<Candidate> findByCandidateSkills_Skill(Skill skill);

	List<Candidate> findByPhone(BigInteger phone);

//	List<WorkExperience> findByWorkExperiences_WorkExperience_StartDateAfterAndEndDateBefore(Date startDate, Date endDate );
	
	@Query(value ="SELECT c FROM Candidate c WHERE c.jobInterviews.outcome=:outcome")
	List<JobInterview> findByOutcome(Integer outcome); 
}  



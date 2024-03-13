package com.dao;

import java.math.BigInteger;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.model.Candidate;
import com.model.JobInterview;
import com.model.Skill;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Integer>{

	List<Candidate> findByIdCandidate(Integer idCandidate);

	List<Candidate> findBySurname(String surname);

	List<Candidate> findByCity(String city);

	List<Candidate> findByEducations_EducationDegreeType_Description(String description);

	List<Candidate> findByCandidateSkills_Skill_Title(String title);

	List<Candidate> findByPhone(BigInteger phone);
	
	List<Candidate> findByJobInterviews_StateJobInterview_Title(String title);

}  



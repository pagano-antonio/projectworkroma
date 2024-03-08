package com.dao;

import java.math.BigInteger;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.Candidate;
import com.model.Education;
import com.model.Skill;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Integer>{

	List<Candidate> findByPhone(BigInteger phone);

	List<Candidate> findByCandidateSkills_Skill(Skill skill);

	List<Candidate> findByEducations_EducationDegreeType_IdEducationDegreeType(Integer idEducationDegreeType);

} 



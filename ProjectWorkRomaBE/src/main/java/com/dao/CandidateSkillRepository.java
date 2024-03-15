package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Candidate;
import com.model.CandidateSkill;

@Repository
public interface CandidateSkillRepository extends JpaRepository<CandidateSkill, Integer>{

	List<CandidateSkill> findByIdCandidateSkill(Integer idCandidateSkill);
	
} 
package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.model.CandidateSkill;

@Repository
public interface CandidateSkillRepository extends JpaRepository<CandidateSkill, Integer>{

}
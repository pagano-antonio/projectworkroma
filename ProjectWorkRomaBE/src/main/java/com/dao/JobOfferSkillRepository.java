package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.JobOfferSkill;

@Repository
public interface JobOfferSkillRepository extends JpaRepository<JobOfferSkill, Integer>{

}

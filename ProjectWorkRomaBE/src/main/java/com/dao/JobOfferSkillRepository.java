package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.JobOffer;
import com.model.JobOfferSkill;

@Repository
public interface JobOfferSkillRepository extends JpaRepository<JobOfferSkill, Integer>{

}

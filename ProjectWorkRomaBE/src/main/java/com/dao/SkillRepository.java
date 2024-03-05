package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.model.Skill;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Integer>{

}

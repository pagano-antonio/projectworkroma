package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.StateJobInterview;

@Repository
public interface StateJobInterviewRepository extends JpaRepository<StateJobInterview, Integer>{

}

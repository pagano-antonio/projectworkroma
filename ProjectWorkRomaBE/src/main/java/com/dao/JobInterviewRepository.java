package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.JobInterview;

@Repository
public interface JobInterviewRepository extends JpaRepository<JobInterview, Integer> {

}

package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.Candidate;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Integer>{

	List<Candidate> findByIdCandidate(Integer idCandidate);

	List<Candidate> findBySurname(String surname);

	List<Candidate> findByCity(String city);

} 



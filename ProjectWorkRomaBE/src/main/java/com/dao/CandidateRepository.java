package com.dao;

	import org.springframework.data.jpa.repository.JpaRepository;
	import org.springframework.stereotype.Repository;

	import com.model.Candidate;

	@Repository
	public interface CandidateRepository extends JpaRepository<Candidate, Integer>{

	}

package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.ContractType;

@Repository
public interface ContractTypeRepository extends JpaRepository<ContractType, Integer>{

}

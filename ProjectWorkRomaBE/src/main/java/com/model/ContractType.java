package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the contract_type database table.
 * 
 */
@Entity
@Table(name = "contract_type")
@NamedQuery(name = "ContractType.findAll", query = "SELECT c FROM ContractType c")
public class ContractType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idContractType;

	private String description;

	private String title;

	public ContractType() {
	}

	public int getIdContractType() {
		return this.idContractType;
	}

	public void setIdContractType(int idContractType) {
		this.idContractType = idContractType;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
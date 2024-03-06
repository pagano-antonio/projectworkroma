package com.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
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

	// bi-directional many-to-one association to JobOffer
	@OneToMany(mappedBy = "contractType")
	private List<JobOffer> jobOffers;

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

	public List<JobOffer> getJobOffers() {
		return this.jobOffers;
	}

	public void setJobOffers(List<JobOffer> jobOffers) {
		this.jobOffers = jobOffers;
	}

	public JobOffer addJobOffer(JobOffer jobOffer) {
		getJobOffers().add(jobOffer);
		jobOffer.setContractType(this);

		return jobOffer;
	}

	public JobOffer removeJobOffer(JobOffer jobOffer) {
		getJobOffers().remove(jobOffer);
		jobOffer.setContractType(null);

		return jobOffer;
	}

}
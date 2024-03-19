package com.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

/**
 * The persistent class for the company_client database table.
 * 
 */
@Entity
@Table(name = "company_client")
@NamedQuery(name = "CompanyClient.findAll", query = "SELECT c FROM CompanyClient c")
public class CompanyClient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idCompanyClient;

	private String address;

	private String city;

	private String name;

	// bi-directional many-to-one association to JobOffer
	@OneToMany(mappedBy = "companyClient", cascade = CascadeType.ALL)
	private List<JobOffer> jobOffers;

	public CompanyClient() {
	}

	public int getIdCompanyClient() {
		return this.idCompanyClient;
	}

	public void setIdCompanyClient(int idCompanyClient) {
		this.idCompanyClient = idCompanyClient;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<JobOffer> getJobOffers() {
		return this.jobOffers;
	}

	public void setJobOffers(List<JobOffer> jobOffers) {
		this.jobOffers = jobOffers;
	}

	public JobOffer addJobOffer(JobOffer jobOffer) {
		getJobOffers().add(jobOffer);
		jobOffer.setCompanyClient(this);

		return jobOffer;
	}

	public JobOffer removeJobOffer(JobOffer jobOffer) {
		getJobOffers().remove(jobOffer);
		jobOffer.setCompanyClient(null);

		return jobOffer;
	}

}
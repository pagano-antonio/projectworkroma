package com.model;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

/**
 * The persistent class for the job_offer database table.
 * 
 */
@Entity
@Table(name = "job_offer")
@NamedQuery(name = "JobOffer.findAll", query = "SELECT j FROM JobOffer j")
public class JobOffer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String description;

	@Temporal(TemporalType.DATE)
	@Column(name = "end_date")
	private Date endDate;

	@Column(name = "id_company_client")
	private int idCompanyClient;

	@Column(name = "id_contract_type")
	private int idContractType;

	@Column(name = "max_ral")
	private BigInteger maxRal;

	@Column(name = "min_ral")
	private BigInteger minRal;

	@Temporal(TemporalType.DATE)
	@Column(name = "start_date")
	private Date startDate;

	private String title;

	public JobOffer() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getIdCompanyClient() {
		return this.idCompanyClient;
	}

	public void setIdCompanyClient(int idCompanyClient) {
		this.idCompanyClient = idCompanyClient;
	}

	public int getIdContractType() {
		return this.idContractType;
	}

	public void setIdContractType(int idContractType) {
		this.idContractType = idContractType;
	}

	public BigInteger getMaxRal() {
		return this.maxRal;
	}

	public void setMaxRal(BigInteger maxRal) {
		this.maxRal = maxRal;
	}

	public BigInteger getMinRal() {
		return this.minRal;
	}

	public void setMinRal(BigInteger minRal) {
		this.minRal = minRal;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
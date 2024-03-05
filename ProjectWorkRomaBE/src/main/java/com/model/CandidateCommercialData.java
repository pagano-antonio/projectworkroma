package com.model;

import java.io.Serializable;
import java.math.BigInteger;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the candidate_commercial_data database table.
 * 
 */
@Entity
@Table(name = "candidate_commercial_data")
@NamedQuery(name = "CandidateCommercialData.findAll", query = "SELECT c FROM CandidateCommercialData c")
public class CandidateCommercialData implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Column(name = "business_cost")
	private BigInteger businessCost;

	@Column(name = "current_ral")
	private BigInteger currentRal;

	@Column(name = "id_candidate")
	private int idCandidate;

	@Column(name = "month_refund")
	private int monthRefund;

	private String notes;

	@Column(name = "proposed_ral")
	private BigInteger proposedRal;

	@Column(name = "subsidy_flag")
	private byte subsidyFlag;

	public CandidateCommercialData() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public BigInteger getBusinessCost() {
		return this.businessCost;
	}

	public void setBusinessCost(BigInteger businessCost) {
		this.businessCost = businessCost;
	}

	public BigInteger getCurrentRal() {
		return this.currentRal;
	}

	public void setCurrentRal(BigInteger currentRal) {
		this.currentRal = currentRal;
	}

	public int getIdCandidate() {
		return this.idCandidate;
	}

	public void setIdCandidate(int idCandidate) {
		this.idCandidate = idCandidate;
	}

	public int getMonthRefund() {
		return this.monthRefund;
	}

	public void setMonthRefund(int monthRefund) {
		this.monthRefund = monthRefund;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public BigInteger getProposedRal() {
		return this.proposedRal;
	}

	public void setProposedRal(BigInteger proposedRal) {
		this.proposedRal = proposedRal;
	}

	public byte getSubsidyFlag() {
		return this.subsidyFlag;
	}

	public void setSubsidyFlag(byte subsidyFlag) {
		this.subsidyFlag = subsidyFlag;
	}

}
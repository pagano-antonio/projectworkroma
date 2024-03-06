package com.model;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

/**
 * The persistent class for the candidate database table.
 * 
 */
@Entity
@NamedQuery(name = "Candidate.findAll", query = "SELECT c FROM Candidate c")
public class Candidate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idCandidate;

	private String address;

	@Temporal(TemporalType.DATE)
	private Date birthday;

	private String birthPlace;

	private String city;

	private String email;

	private String name;

	private BigInteger phone;

	private String surname;

	// bi-directional many-to-one association to CandidateCommercialData
	@OneToMany(mappedBy = "candidate")
	private List<CandidateCommercialData> candidateCommercialData;

	// bi-directional many-to-one association to CandidateSkill
	@OneToMany(mappedBy = "candidate")
	private List<CandidateSkill> candidateSkills;

	// bi-directional many-to-one association to Education
	@OneToMany(mappedBy = "candidate")
	private List<Education> educations;

	// bi-directional many-to-one association to JobInterview
	@OneToMany(mappedBy = "candidate")
	private List<JobInterview> jobInterviews;

	// bi-directional many-to-one association to WorkExperience
	@OneToMany(mappedBy = "candidate")
	private List<WorkExperience> workExperiences;

	public Candidate() {
	}

	public int getIdCandidate() {
		return this.idCandidate;
	}

	public void setIdCandidate(int idCandidate) {
		this.idCandidate = idCandidate;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getBirthPlace() {
		return this.birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigInteger getPhone() {
		return this.phone;
	}

	public void setPhone(BigInteger phone) {
		this.phone = phone;
	}

	public String getSurname() {
		return this.surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public List<CandidateCommercialData> getCandidateCommercialData() {
		return this.candidateCommercialData;
	}

	public void setCandidateCommercialData(List<CandidateCommercialData> candidateCommercialData) {
		this.candidateCommercialData = candidateCommercialData;
	}

	public CandidateCommercialData addCandidateCommercialData(CandidateCommercialData candidateCommercialData) {
		getCandidateCommercialData().add(candidateCommercialData);
		candidateCommercialData.setCandidate(this);

		return candidateCommercialData;
	}

	public CandidateCommercialData removeCandidateCommercialData(CandidateCommercialData candidateCommercialData) {
		getCandidateCommercialData().remove(candidateCommercialData);
		candidateCommercialData.setCandidate(null);

		return candidateCommercialData;
	}

	public List<CandidateSkill> getCandidateSkills() {
		return this.candidateSkills;
	}

	public void setCandidateSkills(List<CandidateSkill> candidateSkills) {
		this.candidateSkills = candidateSkills;
	}

	public CandidateSkill addCandidateSkill(CandidateSkill candidateSkill) {
		getCandidateSkills().add(candidateSkill);
		candidateSkill.setCandidate(this);

		return candidateSkill;
	}

	public CandidateSkill removeCandidateSkill(CandidateSkill candidateSkill) {
		getCandidateSkills().remove(candidateSkill);
		candidateSkill.setCandidate(null);

		return candidateSkill;
	}

	public List<Education> getEducations() {
		return this.educations;
	}

	public void setEducations(List<Education> educations) {
		this.educations = educations;
	}

	public Education addEducation(Education education) {
		getEducations().add(education);
		education.setCandidate(this);

		return education;
	}

	public Education removeEducation(Education education) {
		getEducations().remove(education);
		education.setCandidate(null);

		return education;
	}

	public List<JobInterview> getJobInterviews() {
		return this.jobInterviews;
	}

	public void setJobInterviews(List<JobInterview> jobInterviews) {
		this.jobInterviews = jobInterviews;
	}

	public JobInterview addJobInterview(JobInterview jobInterview) {
		getJobInterviews().add(jobInterview);
		jobInterview.setCandidate(this);

		return jobInterview;
	}

	public JobInterview removeJobInterview(JobInterview jobInterview) {
		getJobInterviews().remove(jobInterview);
		jobInterview.setCandidate(null);

		return jobInterview;
	}

	public List<WorkExperience> getWorkExperiences() {
		return this.workExperiences;
	}

	public void setWorkExperiences(List<WorkExperience> workExperiences) {
		this.workExperiences = workExperiences;
	}

	public WorkExperience addWorkExperience(WorkExperience workExperience) {
		getWorkExperiences().add(workExperience);
		workExperience.setCandidate(this);

		return workExperience;
	}

	public WorkExperience removeWorkExperience(WorkExperience workExperience) {
		getWorkExperiences().remove(workExperience);
		workExperience.setCandidate(null);

		return workExperience;
	}

}
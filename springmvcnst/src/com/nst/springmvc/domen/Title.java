package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "titles")
@NamedQuery(name = "Title.findAll", query = "SELECT t FROM Title t")
public class Title implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "titles_id")
	private Long titlesId;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-mm-dd")
	@Column(name = "from_date")
	
	private Date fromDate;
	
	@Column(name = "title")
	@NotEmpty
	private String title;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-mm-dd")
	@Column(name = "to_date")
	private Date toDate;

	// bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name = "emp_id")
	private Employee employee;

	public Title() {
	}
	public Title(Long titlesId) {
		this.titlesId=titlesId;
	}

	public Title(Long titlesId, Date fromDate, String title, Date toDate, Employee employee) {
		super();
		this.titlesId = titlesId;
		this.fromDate = fromDate;
		this.title = title;
		this.toDate = toDate;
		this.employee = employee;
	}
	public Long getTitlesId() {
		return this.titlesId;
	}

	public void setTitlesId(Long titlesId) {
		this.titlesId = titlesId;
	}

	public Date getFromDate() {
		return this.fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getToDate() {
		return this.toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

}
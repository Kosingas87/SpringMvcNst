package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "titles")
@NamedQuery(name = "Title.findAll", query = "SELECT t FROM Title t")
public class Title implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "titles_id")
	private int titlesId;

	@Temporal(TemporalType.DATE)
	@Column(name = "from_date")
	private Date fromDate;

	private String title;

	@Temporal(TemporalType.DATE)
	@Column(name = "to_date")
	private Date toDate;

	// bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name = "emp_id")
	private Employee employee;

	public Title() {
	}

	public int getTitlesId() {
		return this.titlesId;
	}

	public void setTitlesId(int titlesId) {
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
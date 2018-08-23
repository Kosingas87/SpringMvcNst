package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "salaries")
@NamedQuery(name = "Salary.findAll", query = "SELECT s FROM Salary s")
public class Salary implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "salaries_id")
	private int salariesId;

	private String bonustype;

	@Temporal(TemporalType.DATE)
	@Column(name = "from_date")
	private Date fromDate;

	private String salary;

	@Temporal(TemporalType.DATE)
	@Column(name = "to_date")
	private Date toDate;


	

	// bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name = "emp_id")
	private Employee employee;

	
	

	public Salary() {
	}

	public int getSalariesId() {
		return this.salariesId;
	}

	public void setSalariesId(int salariesId) {
		this.salariesId = salariesId;
	}

	public String getBonustype() {
		return this.bonustype;
	}

	public void setBonustype(String bonustype) {
		this.bonustype = bonustype;
	}

	public Date getFromDate() {
		return this.fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public String getSalary() {
		return this.salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
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
package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "salaries")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "type", discriminatorType = DiscriminatorType.STRING)
@NamedQuery(name = "Salary.findAll", query = "SELECT s FROM Salary s")
public class Salary implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "salaries_id")
	private long salariesId;
	

	
	
	@Column(name = "salary")
	private String salary;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-mm-dd")
	@Column(name = "from_date")
	private Date fromDate;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-mm-dd")
	@Column(name = "to_date")
	private Date toDate;


	

	// bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name = "emp_id")
	private Employee employee;

	
	

	public Salary() {
	}

	public long getSalariesId() {
		return this.salariesId;
	}

	public void setSalariesId(long salariesId) {
		this.salariesId = salariesId;
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

	public Salary(long salariesId, Date fromDate, String salary, Date toDate, Employee employee) {
		super();
		this.salariesId = salariesId;
		this.fromDate = fromDate;
		this.salary = salary;
		this.toDate = toDate;
		this.employee = employee;
	}


	

}
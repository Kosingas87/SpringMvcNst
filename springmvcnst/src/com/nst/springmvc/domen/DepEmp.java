package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name="dep_emp")
@NamedQuery(name="DepEmp.findAll", query="SELECT d FROM DepEmp d")
public class DepEmp implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="dept_emp_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
	private long deptEmpId;



	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-mm-dd")
	@Column(name="from_date")
	
	private Date fromDate;

	

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-mm-dd")
	@Column(name="to_date")
	private Date toDate;

	

	public DepEmp(long deptEmpId, Date fromDate, Date toDate, Department department, Employee employee) {
		super();
		this.deptEmpId = deptEmpId;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.department = department;
		this.employee = employee;
	}

	//bi-directional many-to-one association to Department
	@ManyToOne
	@JoinColumn(name="dept_id")
	private Department department;

	//bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name="emp_id")
	private Employee employee;

	public DepEmp() {
	}

	
	

	public long getDeptEmpId() {
		return this.deptEmpId;
	}

	public void setDeptEmpId(long deptEmpId) {
		this.deptEmpId = deptEmpId;
	}

	

	public Date getFromDate() {
		return this.fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	

	public Date getToDate() {
		return this.toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public Department getDepartment() {
		return this.department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

}
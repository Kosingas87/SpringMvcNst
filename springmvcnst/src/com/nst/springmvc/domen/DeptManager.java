package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name="dept_manager")
@NamedQuery(name="DeptManager.findAll", query="SELECT d FROM DeptManager d")
public class DeptManager implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="dept_manager_id")
	private int deptManagerId;





	@Temporal(TemporalType.DATE)
	@Column(name="from_date")
	private Date fromDate;

	

	@Temporal(TemporalType.DATE)
	@Column(name="to_date")
	private Date toDate;

	//bi-directional many-to-one association to Department
	@ManyToOne
	@JoinColumn(name="dept_id")
	private Department department;

	//bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name="emp_id")
	private Employee employee;

	public DeptManager() {
	}

	

	public int getDeptManagerId() {
		return this.deptManagerId;
	}

	public void setDeptManagerId(int deptManagerId) {
		this.deptManagerId = deptManagerId;
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
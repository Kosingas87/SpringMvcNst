package com.nst.springmvc.domen;

import java.io.Serializable;

import java.util.Date;
import java.util.List;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the employees database table.
 * 
 */
@Entity
@Table(name = "employees")
@XmlRootElement
@NamedQuery(name = "Employee.findAll", query = "SELECT e FROM Employee e")
public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "emp_id")
	private long empId;

	@Temporal(TemporalType.DATE)
	@Column(name = "birth_date")
	@DateTimeFormat(pattern="yyyy-mm-dd")
	private Date birthDate;

	@Column(name = "first_name")
	private String firstName;

	private String gender;

	@Temporal(TemporalType.DATE)
	@Column(name = "hire_date")
	@DateTimeFormat(pattern="yyyy-mm-dd")
	private Date hireDate;

	@Column(name = "last_name")
	private String lastName;

	// bi-directional many-to-one association to DepEmp
	@OneToMany(mappedBy = "employee")
	private List<DepEmp> depEmps;

	// bi-directional many-to-one association to DeptManager
	@OneToMany(mappedBy = "employee")
	private List<DeptManager> deptManagers;

	// bi-directional many-to-one association to Salary
	@OneToMany(mappedBy = "employee")
	private List<Salary> salaries;

	// bi-directional many-to-one association to Title
	@OneToMany(mappedBy = "employee")
	private List<Title> titles;

	public Employee() {
	}

	public long getEmpId() {
		return this.empId;
	}

	public void setEmpId(long empId) {
		this.empId = empId;
	}

	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getHireDate() {
		return this.hireDate;
	}



	public Employee(long empId, Date birthDate, String firstName, String gender, Date hireDate, String lastName) {
		
		this.empId = empId;
		this.birthDate = birthDate;
		this.firstName = firstName;
		this.gender = gender;
		this.hireDate = hireDate;
		this.lastName = lastName;
	}

	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public List<DepEmp> getDepEmps() {
		return this.depEmps;
	}

	public void setDepEmps(List<DepEmp> depEmps) {
		this.depEmps = depEmps;
	}

	public DepEmp addDepEmp(DepEmp depEmp) {
		getDepEmps().add(depEmp);
		depEmp.setEmployee(this);

		return depEmp;
	}

	public DepEmp removeDepEmp(DepEmp depEmp) {
		getDepEmps().remove(depEmp);
		depEmp.setEmployee(null);

		return depEmp;
	}

	public List<DeptManager> getDeptManagers() {
		return this.deptManagers;
	}

	public void setDeptManagers(List<DeptManager> deptManagers) {
		this.deptManagers = deptManagers;
	}

	public DeptManager addDeptManager(DeptManager deptManager) {
		getDeptManagers().add(deptManager);
		deptManager.setEmployee(this);

		return deptManager;
	}

	public DeptManager removeDeptManager(DeptManager deptManager) {
		getDeptManagers().remove(deptManager);
		deptManager.setEmployee(null);

		return deptManager;
	}

	public List<Salary> getSalaries() {
		return this.salaries;
	}

	public void setSalaries(List<Salary> salaries) {
		this.salaries = salaries;
	}

	public Salary addSalary(Salary salary) {
		getSalaries().add(salary);
		salary.setEmployee(this);

		return salary;
	}

	public Salary removeSalary(Salary salary) {
		getSalaries().remove(salary);
		salary.setEmployee(null);

		return salary;
	}

	public List<Title> getTitles() {
		return this.titles;
	}

	public void setTitles(List<Title> titles) {
		this.titles = titles;
	}

	public Title addTitle(Title title) {
		getTitles().add(title);
		title.setEmployee(this);

		return title;
	}

	public Title removeTitle(Title title) {
		getTitles().remove(title);
		title.setEmployee(null);

		return title;
	}

	@Override
	public String toString() {
		return "Employee [empId=" + empId + ", birthDate=" + birthDate + ", firstName=" + firstName + ", gender="
				+ gender + ", hireDate=" + hireDate + ", lastName=" + lastName + "]";
	}


}
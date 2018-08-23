package com.nst.springmvc.domen;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;

import javax.persistence.Entity;

@Entity
@Table(name = "departments")
@NamedQuery(name = "Department.findAll", query = "SELECT d FROM Department d")
public class Department implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "dept_id")
	private int deptId;

	@Column(name = "dept_name")
	private String deptName;

	// bi-directional many-to-one association to DepEmp
	@OneToMany(mappedBy = "department")
	private List<DepEmp> depEmps;

	// bi-directional many-to-one association to DeptManager
	@OneToMany(mappedBy = "department")
	private List<DeptManager> deptManagers;

	public Department() {
	}

	public int getDeptId() {
		return this.deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return this.deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public List<DepEmp> getDepEmps() {
		return this.depEmps;
	}

	public void setDepEmps(List<DepEmp> depEmps) {
		this.depEmps = depEmps;
	}

	public DepEmp addDepEmp(DepEmp depEmp) {
		getDepEmps().add(depEmp);
		depEmp.setDepartment(this);

		return depEmp;
	}

	public DepEmp removeDepEmp(DepEmp depEmp) {
		getDepEmps().remove(depEmp);
		depEmp.setDepartment(null);

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
		deptManager.setDepartment(this);

		return deptManager;
	}

	public DeptManager removeDeptManager(DeptManager deptManager) {
		getDeptManagers().remove(deptManager);
		deptManager.setDepartment(null);

		return deptManager;
	}

}
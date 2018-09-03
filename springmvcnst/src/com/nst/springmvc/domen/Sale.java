package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@DiscriminatorValue("SS")
public class Sale extends Salary {
	private static final long serialVersionUID = 1L;
	@Column(name="commision")
	private float commision;

	

	//bi-directional many-to-one association to Salary

	
	

	public Sale() {
	}

	public float getCommision() {
		return this.commision;
	}

	public void setCommision(float commision) {
		this.commision = commision;
	}



	
}
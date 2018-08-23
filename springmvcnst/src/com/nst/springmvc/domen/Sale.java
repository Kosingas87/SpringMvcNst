package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name="sales")
@DiscriminatorValue("S")
@NamedQuery(name="Sale.findAll", query="SELECT s FROM Sale s")
public class Sale extends Salary implements Serializable {
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
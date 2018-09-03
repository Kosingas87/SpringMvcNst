package com.nst.springmvc.domen;

import java.io.Serializable;
import javax.persistence.*;

@Entity
@DiscriminatorValue("NS")
public class NonSale extends Salary{
	private static final long serialVersionUID = 1L;
	@Column(name="bonus")
	private float bonus;

	

	//bi-directional many-to-one association to Salary

	

	public NonSale() {
	}

	public float getBonus() {
		return this.bonus;
	}

	public void setBonus(float bonus) {
		this.bonus = bonus;
	}



	

}
package com.skilldistillery.deadofwinter.entities;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Location {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	private String weapon;
	private String book;
	
	@Column(name = "medical_supply")
	private String medicalSupply;
	
	private String tool;
	private String food;
	
	@Column(name = "zombie_count")
	private int zombieCount;
	
	public Location() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWeapon() {
		return weapon;
	}

	public void setWeapon(String weapon) {
		this.weapon = weapon;
	}

	public String getBook() {
		return book;
	}

	public void setBook(String book) {
		this.book = book;
	}

	public String getMedicalSupply() {
		return medicalSupply;
	}

	public void setMedicalSupply(String medicalSupply) {
		this.medicalSupply = medicalSupply;
	}

	public String getTool() {
		return tool;
	}

	public void setTool(String tool) {
		this.tool = tool;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public int getZombieCount() {
		return zombieCount;
	}

	public void setZombieCount(int zombieCount) {
		this.zombieCount = zombieCount;
	}

	@Override
	public String toString() {
		return "Location [id=" + id + ", name=" + name + ", weapon=" + weapon + ", book=" + book + ", medicalSupply="
				+ medicalSupply + ", tool=" + tool + ", food=" + food + ", zombieCount=" + zombieCount + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Location other = (Location) obj;
		return id == other.id;
	}

	
	
}

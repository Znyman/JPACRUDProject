package com.skilldistillery.deadofwinter.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class LocationTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Location location;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("DeadOfWinter");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		location = em.find(Location.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		location = null;
	}

	@Test
	void test_Location_entity_mapping() {
		assertNotNull(location);
		assertEquals("Police Station", location.getName());
		assertEquals("Assault Rifle", location.getWeapon());
		assertEquals("Firearm Safety Basics", location.getBook());
		assertEquals("Gauze and Bandages", location.getMedicalSupply());
		assertEquals("Multi-tool", location.getTool());
		assertEquals("Freeze Dried Biscuits and Gravy", location.getFood());
		assertEquals(4, location.getZombieCount());
	}

}

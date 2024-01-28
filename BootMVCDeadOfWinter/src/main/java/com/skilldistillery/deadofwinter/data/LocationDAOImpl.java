package com.skilldistillery.deadofwinter.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.deadofwinter.entities.Location;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class LocationDAOImpl implements LocationDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Location findById(int id) {
		Location location = em.find(Location.class, id);
		return location;
	}

	@Override
	public List<Location> findAll() {
		String jpql = "SELECT location FROM Location location";
		
		List<Location> locations = em.createQuery(jpql, Location.class).getResultList();
		
		return locations;
	}

	@Override
	public Location create(Location location) {
		em.persist(location);
		return location;
	}

	@Override
	public Location update(Location location) {
		Location managedLocation = em.find(Location.class, location.getId());
		managedLocation.setBook(location.getBook());
		managedLocation.setFood(location.getFood());
		managedLocation.setMedicalSupply(location.getMedicalSupply());
		managedLocation.setName(location.getName());
		managedLocation.setTool(location.getTool());
		managedLocation.setWeapon(location.getWeapon());
		managedLocation.setZombieCount(location.getZombieCount());
		return managedLocation;
	}

	@Override
	public boolean delete(int id) {
		Location managedLocation = em.find(Location.class, id);
		
		if (managedLocation == null) {
			return false;
		}
		
		em.remove(managedLocation);
		return true;
	}

}

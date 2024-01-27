package com.skilldistillery.deadofwinter.data;

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

}

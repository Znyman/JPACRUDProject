package com.skilldistillery.deadofwinter.data;

import java.util.List;

import com.skilldistillery.deadofwinter.entities.Location;

public interface LocationDAO {
	
	Location findById(int id);
	List<Location> findAll();
	public Location create(Location location);
	public Location update(Location location);
	public boolean delete(int id);

}

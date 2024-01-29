package com.skilldistillery.deadofwinter.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.deadofwinter.data.LocationDAO;
import com.skilldistillery.deadofwinter.entities.Location;

@Controller
public class LocationController {
	
	@Autowired
	LocationDAO locationDAO;
	
	@GetMapping(path = {"", "/", "index.do"})
	public String index(Model model) {
		List<Location> locations = locationDAO.findAll();
		model.addAttribute("locations", locations);
		return "index";
	}
	
	@GetMapping(path = "GetLocation.do")
	public String getLocationById(@RequestParam("id") int id, Model model) {
		Location location = locationDAO.findById(id);
		model.addAttribute("location", location);
		return "showLocation";
	}
	
	@PostMapping(path = "NewLocation.do")
	public String addLocationToDAO(Location location, RedirectAttributes redirect) {
		Location managedLocation = locationDAO.create(location);
		redirect.addFlashAttribute("location", managedLocation);
		return "redirect:LocationAdded.do";
	}
	
	@GetMapping(path = "LocationAdded.do")
	public String locationCreated(Location location) {
		return "showLocation";
	}
	
	@PostMapping(path = "UpdateLocation.do")
	public String locationUpdated(Location location, Model model) {
		Location managedLocation = locationDAO.update(location);
		String updateMessage = "Your location has been updated in the database.";
		model.addAttribute("updateMessage", updateMessage);
		model.addAttribute("location", managedLocation);
		return "showLocation";
	}
	
	@PostMapping(path = "DeleteLocation.do")
	public String locationDeleted(@RequestParam("id") int id, Model model) {
		String updateMessage = "";
		try {
			boolean deleteStatus = locationDAO.delete(id);
			if (deleteStatus) {
				updateMessage = "Your location has been removed from the database.";
			} else {
				updateMessage = "Failed to delete the location.";
			}
		} catch (Exception e) {
			updateMessage = "An error occurred while deleting the location.";
		}
		model.addAttribute("updateMessage", updateMessage);
		return "showLocation";
	}

}

package com.skilldistillery.deadofwinter.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.skilldistillery.deadofwinter.data.LocationDAO;

@Controller
public class LocationController {
	
	@Autowired
	LocationDAO locationDAO;
	
	@GetMapping(path = {"", "/"})
	public String index(Model model) {
		return "index";
	}

}

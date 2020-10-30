package com.selimhorri.app.pack.controllers.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.selimhorri.app.pack.models.entities.Department;
import com.selimhorri.app.pack.services.DepartmentService;

@RestController
@CrossOrigin
@RequestMapping("api/departments")
public class DepartmentRESTController {
	
	private final DepartmentService service;
	
	@Autowired
	public DepartmentRESTController(final DepartmentService service) {
		this.service = service;
	}
	
	@GetMapping(value = {"/"})
	public ResponseEntity<List<Department>> findAll() {
		return new ResponseEntity<>(this.service.findAll(), HttpStatus.OK);
	}
	
	@GetMapping(value = {"/{id}", "/get/{id}"})
	public ResponseEntity<Department> findById(@PathVariable("id") final String id) {
		return new ResponseEntity<>(this.service.findById(Integer.parseInt(id)), HttpStatus.OK);
	}
	
	@PostMapping(value = {"/", "/save"})
	public ResponseEntity<Department> save(@RequestBody final Department Department) {
		return new ResponseEntity<>(this.service.save(Department), HttpStatus.OK);
	}
	
	@PutMapping(value = {"/{id}", "/update/{id}"})
	public ResponseEntity<Department> update(@PathVariable("id") final String id) {
		return new ResponseEntity<>(this.service.update(Integer.parseInt(id)), HttpStatus.OK);
	}
	
	@DeleteMapping(value = {"/{id}", "/delete/{id}"})
	public void delete(@PathVariable("id") final String id) {
		this.service.delete(Integer.parseInt(id));
	}
	
	
	
}










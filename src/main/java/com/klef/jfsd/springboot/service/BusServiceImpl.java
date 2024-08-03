package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Bus;
import com.klef.jfsd.springboot.repository.BusRepository;

@Service
public class BusServiceImpl implements BusService
{

	@Autowired
	private BusRepository busRepository;

	@Override
	public List<Bus> viewallbus() {
	return busRepository.findAll();
	}
}

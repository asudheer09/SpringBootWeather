package com.weather.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WeatherController {
	
	@RequestMapping("/")
	public String home(){
		return "home";
	}
	@RequestMapping("/weather")
	public String weather(@RequestParam("city")String city){
		System.out.println(city);
		return "weather";
	}
	
}

package com.weather.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class WeatherController {
	private static final String URL="http://api.openweathermap.org/data/2.5/weather?q=";
	private static final String APPID="&appid=8202529ecf9558d485c1156f98948c38";
	@Autowired
	private RestTemplate template;
	
	@RequestMapping("/")
	public String home(){
		return "home";
	}
	@RequestMapping(value="/weather",method=RequestMethod.POST)
	
	public @ResponseBody String weather(@RequestParam(value="city")String city){
		System.out.println(city);
		String response=template.getForObject(URL+city+APPID, String.class);
		return response;
	}
	@Bean
	public RestTemplate restTemplate() {
	    return new RestTemplate();
	}
}

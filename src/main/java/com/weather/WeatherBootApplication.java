package com.weather;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages="com.weather")
public class WeatherBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(WeatherBootApplication.class, args);
	}
}

package com.demo.dapr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DaprApplication {

	public static void main(String[] args) {
		SpringApplication.run(DaprApplication.class, args);

		System.out.println("Hello World");

	}

}

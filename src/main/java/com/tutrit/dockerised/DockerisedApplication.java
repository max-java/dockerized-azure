package com.tutrit.dockerised;

import com.tutrit.dockerised.controller.IndexController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@SpringBootApplication
public class DockerisedApplication {

	public static void main(String[] args) {
		IndexController indexController = SpringApplication.run(DockerisedApplication.class, args).getBean(IndexController.class);
		System.out.println(indexController);
	}


}

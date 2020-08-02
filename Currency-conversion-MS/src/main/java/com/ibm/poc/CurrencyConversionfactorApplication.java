package com.ibm.poc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.context.annotation.Bean;

import brave.sampler.Sampler;


@SpringBootApplication
@EnableDiscoveryClient
@EnableEurekaClient
@EnableHystrix


public class CurrencyConversionfactorApplication {

	public static void main(String[] args) {
		SpringApplication.run(CurrencyConversionfactorApplication.class, args);
	}	
	@Bean
	public Sampler defaultSampler() {
		return Sampler.ALWAYS_SAMPLE;
	}	

}
package com.shishaapi.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class ShishaApplication {
    public static void main(String[] args) {
        SpringApplication.run(ShishaApplication.class, args);
    }
}

package nh.recipify;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.test.context.TestConfiguration;

@TestConfiguration(proxyBeanMethods = false)
public class TestBackendApplication {


	public static void main(String[] args) {
		SpringApplication.from(BackendApplication::main).with(PostgresDbTestContainer.class).run(args);
	}

}

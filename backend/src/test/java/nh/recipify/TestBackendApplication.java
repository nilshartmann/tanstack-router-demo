package nh.recipify;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.context.annotation.Bean;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.utility.DockerImageName;

@TestConfiguration(proxyBeanMethods = false)
public class TestBackendApplication {

	@SuppressWarnings("resource")
	@Bean
	@ServiceConnection
	PostgreSQLContainer<?> postgresContainer() {
		return new PostgreSQLContainer<>(DockerImageName.parse("postgres:16-alpine"))
			.withDatabaseName("recipify")
			.withUsername("recipify")
			.withPassword("recipify")
			// das Label muss der Konfiguration von TestContainers Desktop entsprechen:
			//
			// [selector.labels]
			// "com.testcontainers.desktop.service" = "recipify-postgres"
			.withLabel("com.testcontainers.desktop.service", "recipify-postgres");

	}

	public static void main(String[] args) {
		SpringApplication.from(BackendApplication::main).with(TestBackendApplication.class).run(args);
	}

}

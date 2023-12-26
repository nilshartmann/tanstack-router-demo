package nh.recipify;

import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.testcontainers.service.connection.ServiceConnection;
import org.springframework.context.annotation.Bean;
import org.testcontainers.containers.PostgreSQLContainer;
import org.testcontainers.utility.DockerImageName;

@TestConfiguration
public class PostgresDbTestContainer {

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

}

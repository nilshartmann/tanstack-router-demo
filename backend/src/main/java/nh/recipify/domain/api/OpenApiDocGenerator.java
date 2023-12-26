package nh.recipify.domain.api;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@Service
@ConditionalOnProperty(prefix = "generate-open-api-doc-on-startup", name = "enabled", matchIfMissing = true)
public class OpenApiDocGenerator implements CommandLineRunner {
    private static final Logger log = LoggerFactory.getLogger(OpenApiDocGenerator.class);

    private final String source;
    private final Path target;

    public OpenApiDocGenerator(
        @Value("${generate-open-api-doc-on-startup.source:http://localhost:8080/v3/api-docs.yaml}") String source,
        @Value("${generate-open-api-doc-on-startup.target:#{systemProperties['user.dir'] + '/frontend/generated-api-doc.yaml'}}") Path target) {
        this.source = source;
        this.target = target;
    }

    @Override
    public void run(String... args) throws Exception {
        RestTemplate restTemplate = new RestTemplate();
        log.info("Writing API spec from '{}' to '{}'", source, target);
        var body = restTemplate.getForEntity(source, String.class)
            .getBody();
        try {
            Files.write(target, body.getBytes());
        } catch (IOException e) {
            log.warn("Could not write API spec to '{}': {}", source, e, e);
        }
    }
}
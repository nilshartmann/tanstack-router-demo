package nh.recipify.domain;

import nh.recipify.PostgresDbTestContainer;
import nh.recipify.domain.model.RecipeRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest
@Transactional
@Import(PostgresDbTestContainer.class)
class RecipeRepositoryTest {

    @Autowired
    RecipeRepository recipeRepository;

    @Test
    void abc() {
        var result = recipeRepository.findByUserId(1L);
        System.out.println("result" + result);
    }

}
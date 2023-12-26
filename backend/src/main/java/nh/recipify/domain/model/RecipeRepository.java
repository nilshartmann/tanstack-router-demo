package nh.recipify.domain.model;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface RecipeRepository extends Repository<Recipe, Long> {

    List<Recipe> findByUserId(Long id);

    Page<Recipe> findAllBy(Pageable p);

}

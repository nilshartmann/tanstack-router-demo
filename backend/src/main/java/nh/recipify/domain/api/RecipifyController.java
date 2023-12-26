package nh.recipify.domain.api;

import io.swagger.v3.oas.annotations.Parameter;
import nh.recipify.domain.model.Recipe;
import nh.recipify.domain.model.RecipeRepository;
import org.springdoc.core.converters.models.PageableAsQueryParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(produces = MediaType.APPLICATION_JSON_VALUE, path = "/api")
@CrossOrigin(origins = "http://localhost:8090")
public class RecipifyController {

    @Autowired
    RecipeRepository recipeRepository;

    @GetMapping("/recipes")
    @PageableAsQueryParam
    PageResponse<RecipeDto> recipes(@Parameter(hidden=true) Pageable pageable) {
        Page<Recipe> result = recipeRepository.findAllBy(pageable);
        var newPage = result.map(RecipeDto::forRecipe);
        return PageResponse.of(newPage);
    }


}

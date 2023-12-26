package nh.recipify.domain.api;

import jakarta.validation.constraints.NotNull;
import nh.recipify.domain.model.DifficultyLevel;
import nh.recipify.domain.model.Recipe;

import java.util.List;

public record RecipeDto(

    @NotNull Long id,
    @NotNull String userFullname,
    @NotNull String title,
    @NotNull String headline,
    @NotNull int preparationTime,
    @NotNull int cookTime,
    @NotNull List<CategoryDto> categories,
    @NotNull DifficultyLevel difficulty
) {

    static RecipeDto forRecipe(Recipe r) {
        return new RecipeDto(
            r.getId(),
            r.getUser().getFullname(),
            r.getHeadline(),
            r.getTitle(),
            r.getPreparationTime(),
            r.getCookTime(),
            r.getCategories().stream().map(CategoryDto::of).toList(),
            r.getDifficulty()
        );
    }

}

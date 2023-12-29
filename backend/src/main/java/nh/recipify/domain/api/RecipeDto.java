package nh.recipify.domain.api;

import jakarta.validation.constraints.NotNull;
import nh.recipify.domain.model.Feedback;
import nh.recipify.domain.model.Recipe;

import java.time.LocalDateTime;
import java.util.List;

public record RecipeDto(

    @NotNull String id,
    @NotNull LocalDateTime createdAt,
    @NotNull String userFullname,
    @NotNull String title,
    @NotNull String headline,
    @NotNull int preparationTime,
    @NotNull int cookTime,
    @NotNull List<CategoryDto> categories,
    @NotNull String mealType,
    @NotNull double averageRating
) {

    static RecipeDto forRecipe(Recipe r) {
        return new RecipeDto(
            r.getId().toString(),
            r.getCreatedAt(),
            r.getUser().getFullname(),
            r.getTitle(),
            r.getHeadline(),
            r.getPreparationTime(),
            r.getCookTime(),
            r.getCategories().stream().map(CategoryDto::of).toList(),
            r.getMealType().getName(),
            r.getFeedbacks().stream().mapToInt(Feedback::getRating).average().orElse(0)
        );
    }

}

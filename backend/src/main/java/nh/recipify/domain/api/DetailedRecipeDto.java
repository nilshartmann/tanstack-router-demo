package nh.recipify.domain.api;

import com.fasterxml.jackson.annotation.JsonUnwrapped;
import jakarta.validation.constraints.NotNull;
import nh.recipify.domain.model.Ingredient;
import nh.recipify.domain.model.Instruction;
import nh.recipify.domain.model.Recipe;

import java.util.List;


public record DetailedRecipeDto(@JsonUnwrapped RecipeDto recipe,
                                @NotNull List<Instruction> instructions,
                                @NotNull List<Ingredient> ingredients) {

    public static DetailedRecipeDto of(Recipe r) {
        return new DetailedRecipeDto(
            RecipeDto.forRecipe(r),
            r.getInstructions(),
            r.getIngredients()
        );
    }

}

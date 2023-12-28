package nh.recipify.domain.api;

import jakarta.validation.constraints.NotNull;
import nh.recipify.domain.model.Category;

public record CategoryDto(@NotNull String type, @NotNull String title, @NotNull String description, @NotNull String icon) {
    public static CategoryDto of(Category category) {
        return new CategoryDto(
            category.getType().getName(),
            category.getTitle(),
            category.getDescription(),
            category.getType().getIcon()
        );
    }
}

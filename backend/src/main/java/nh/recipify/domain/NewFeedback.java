package nh.recipify.domain;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;

public record NewFeedback(@NotBlank String commenter,
                             @Min(0) @Max(5) int stars,
                             @NotBlank String comment) {}
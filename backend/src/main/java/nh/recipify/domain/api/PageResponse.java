package nh.recipify.domain.api;

import jakarta.validation.constraints.NotNull;
import org.springframework.data.domain.Page;

import java.util.List;

public record PageResponse<T>(@NotNull List<T> content,
                              @NotNull boolean hasNext,
                              @NotNull boolean hasPrevious) {

    public static <T> PageResponse<T> of(Page<T> target) {
        return new PageResponse<>(target.getContent(), target.hasNext(), target.hasPrevious());
    }
}
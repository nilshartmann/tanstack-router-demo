package nh.recipify.domain;

import jakarta.persistence.EntityNotFoundException;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import nh.recipify.domain.model.Feedback;
import nh.recipify.domain.model.FeedbackRepository;
import nh.recipify.domain.model.RecipeRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

@Service
@Validated
public class FeedbackService {

    private final RecipeRepository recipeRepository;
    private final FeedbackRepository feedbackRepository;

    public FeedbackService(RecipeRepository recipeRepository, FeedbackRepository feedbackRepository) {
        this.recipeRepository = recipeRepository;
        this.feedbackRepository = feedbackRepository;
    }

    @Transactional
    public Feedback addFeedback(long recipeId, @Valid @NotNull NewFeedback feedbackData) {
        var recipe = recipeRepository.findById(recipeId).orElseThrow(
            () -> new EntityNotFoundException("No recipe " + recipeId + " found."));

        var newFeedback = new Feedback(
            recipe,
            feedbackData.commenter(),
            feedbackData.stars(),
            feedbackData.comment()
        );

        return feedbackRepository.save(newFeedback);

    }

}

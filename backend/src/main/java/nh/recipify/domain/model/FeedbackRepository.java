package nh.recipify.domain.model;

import org.springframework.data.repository.Repository;

import java.util.List;

public interface FeedbackRepository extends Repository<Feedback, Long> {

    List<Feedback> getFeedbacksByRecipeIdOrderByCreatedAtDesc(Long recipeId);

}

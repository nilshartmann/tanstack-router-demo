package nh.recipify.domain.model;

import org.springframework.data.repository.Repository;

import java.util.List;

public interface FeedbackRepository extends Repository<Feedback, Long> {

    public List<Feedback> getFeedbacksByRecipeIdOrderByCreatedAt(Long recipeId);

}

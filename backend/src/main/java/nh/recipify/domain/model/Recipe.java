package nh.recipify.domain.model;

import com.fasterxml.jackson.annotation.JsonView;
import jakarta.persistence.*;
import nh.recipify.domain.api.RecipeViews;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "recipes")
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name="user_id", nullable = false)
    private User user;

    @CreatedDate
    @Column(name="created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @LastModifiedDate
    @Column(name="updated_at", nullable = false )
    private LocalDateTime updatedAt;

    @Column(nullable = false)
    @JsonView(RecipeViews.Summary.class)
    private String title;

    @Column(nullable = false)
    @JsonView(RecipeViews.Summary.class)
    private String headline;

    @Column(nullable = false)
    @JsonView(RecipeViews.Summary.class)
    private int preparationTime;

    @Column(nullable = false)
    @JsonView(RecipeViews.Summary.class)
    private int cookTime;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="difficulty_level_id", nullable = false)
    private DifficultyLevel difficulty;

    @Column(nullable = false)
    private String steps;

    @OneToMany(mappedBy = "recipe")
    private List<Ingredient> ingredients;

    @OneToMany(mappedBy = "recipe")
    private List<Feedback> feedbacks;

    @ManyToMany
    @JoinTable(
        name = "recipe_categories",
        joinColumns = @JoinColumn(name = "recipe_id"),
        inverseJoinColumns = @JoinColumn(name = "category_id")
    )
    private Set<Category> categories = new HashSet<>();

    public Long getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public String getTitle() {
        return title;
    }

    public String getHeadline() {
        return headline;
    }

    public Integer getPreparationTime() {
        return preparationTime;
    }

    public Integer getCookTime() {
        return cookTime;
    }

    public DifficultyLevel getDifficulty() {
        return difficulty;
    }

    public String getSteps() {
        return steps;
    }

    public List<Ingredient> getIngredients() {
        return ingredients;
    }

    public List<Feedback> getFeedbacks() {
        return feedbacks;
    }

    public Set<Category> getCategories() {
        return categories;
    }

    @Override
    public String toString() {
        return "Recipe{" +
               "id=" + id +
               ", user=" + user +
               ", createdAt=" + createdAt +
               ", updatedAt=" + updatedAt +
               ", title='" + title + '\'' +
               ", headline='" + headline + '\'' +
               ", preparationTime=" + preparationTime +
               ", cookTime=" + cookTime +
               ", difficulty=" + difficulty +
               ", steps='" + steps + '\'' +
               ", ingredients=" + ingredients +
               ", categories=" + categories +
               ", feedbacks=" + feedbacks +
               '}';
    }
}
package nh.recipify.domain.model;

import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Entity
@Table(name = "recipes")
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String headline;

    @Column(nullable = false)
    private int preparationTime;

    @Column(nullable = false)
    private int cookTime;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "meal_type_id", nullable = false)
    private MealType mealType;

    @OneToMany(mappedBy = "recipe")
    private List<Ingredient> ingredients;

    @OneToMany(mappedBy = "recipe")
    private List<Instruction> instructions;

    @OneToMany(mappedBy = "recipe")
    private List<Feedback> feedbacks;

    @Column(name = "average_rating", precision = 10, scale = 2, nullable = false, insertable = false, updatable = false)
    private BigDecimal averageRating;

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

    public MealType getMealType() {
        return mealType;
    }

    public List<Ingredient> getIngredients() {
        return ingredients.stream()
            .sorted(Comparator.comparingInt(Ingredient::getOrderNo))
            .collect(Collectors.toList());
    }

    public List<Instruction> getInstructions() {
        return instructions.stream()
            .sorted(Comparator.comparingInt(Instruction::getOrderNo))
            .collect(Collectors.toList());
    }

    public List<Feedback> getFeedbacks() {
        return feedbacks;
    }

    public List<Category> getCategories() {
        return categories.stream()
            .sorted(Comparator.comparing((Category c) -> c.getType().getName())
                .thenComparing(Category::getTitle))
            .collect(Collectors.toList());
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
               ", difficulty=" + mealType +
               ", ingredients=" + ingredients +
               ", instructions=" + instructions +
               ", categories=" + categories +
               ", feedbacks=" + feedbacks +
               '}';
    }
}
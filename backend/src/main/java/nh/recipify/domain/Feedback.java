package nh.recipify.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import org.springframework.data.annotation.CreatedDate;

import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Table(name = "feedbacks")
public class Feedback {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @CreatedDate
    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt;

    @NotNull
    private String commenter;

    @NotNull
    private int rating;

    @NotNull
    private String comment;

    @ManyToOne
    @JoinColumn(name = "recipe_id", nullable = false)
    @NotNull
    private Recipe recipe;

    protected Feedback() {
    }

    public Feedback(Recipe receipe, int rating, String comment ){
        this.recipe = receipe;
        this.rating = rating;
        this.comment = comment;
    }

    public Long getId() {
        return id;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public int getRating() {
        return rating;
    }

    public String getComment() {
        return comment;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Feedback feedback = (Feedback) o;
        return Objects.equals(id, feedback.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    // Getters and setters, constructors, etc.
}


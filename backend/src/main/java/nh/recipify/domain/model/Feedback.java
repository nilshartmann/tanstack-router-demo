package nh.recipify.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

import java.time.LocalDateTime;

@Entity
@Table(name = "feedbacks")
public class Feedback {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    @NotNull
    private LocalDateTime createdAt;

    @Column(nullable = false)
    @NotNull
    private String commenter;

    @Column(nullable = false)
    @NotNull
    private Integer rating;

    @Column(nullable = false)
    @NotNull
    private String comment;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipe_id", nullable = false)
    @JsonIgnore
    private Recipe recipe;

    public Long getId() {
        return id;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public String getCommenter() {
        return commenter;
    }

    public Integer getRating() {
        return rating;
    }

    public String getComment() {
        return comment;
    }

    protected Feedback() {
    }

    public Feedback(Recipe recipe, String commenter, Integer rating, String comment) {
        this.createdAt = LocalDateTime.now();
        this.recipe = recipe;
        this.commenter = commenter;
        this.rating = rating;
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Feedback{" +
               "id=" + id +
               ", createdAt=" + createdAt +
               ", commenter='" + commenter + '\'' +
               ", rating=" + rating +
               ", comment='" + comment + '\'' +
               '}';
    }
}
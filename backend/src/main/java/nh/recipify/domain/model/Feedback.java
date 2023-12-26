package nh.recipify.domain.model;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "feedbacks")
public class Feedback {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime createdAt;

    @Column(nullable = false)
    private String commenter;

    @Column(nullable = false)
    private Integer rating;

    @Column(nullable = false)
    private String comment;

    @ManyToOne
    @JoinColumn(name="recipe_id", nullable = false)
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
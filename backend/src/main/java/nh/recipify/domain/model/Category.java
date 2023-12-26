package nh.recipify.domain.model;

import com.fasterxml.jackson.annotation.JsonView;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import nh.recipify.domain.api.RecipeViews;

@Entity
@Table(name = "categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="category_type_id", nullable = false)
    @JsonView(RecipeViews.Summary.class)
    @NotNull
    private CategoryType type;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String description;

    public CategoryType getType() {
        return type;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        return "Category{" +
               "id=" + id +
               ", type=" + type +
               ", title='" + title + '\'' +
               ", description='" + description + '\'' +
               '}';
    }
}
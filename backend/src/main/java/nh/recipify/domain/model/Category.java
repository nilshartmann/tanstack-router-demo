package nh.recipify.domain.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "categories")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="category_type_id", nullable = false)
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
package nh.recipify.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "category_types")
public class CategoryType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonIgnore
    private Long id;

    @NotNull
    private String name;

    @NotNull
    private String icon;

    protected CategoryType() {}

    public CategoryType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public String getIcon() {
        return icon;
    }
}
package nh.recipify.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;




@Entity
@Table(name = "meal_types")
public class MealType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonIgnore
    private Long id;

    @NotNull
    private String name;

    protected MealType(){}

    public MealType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
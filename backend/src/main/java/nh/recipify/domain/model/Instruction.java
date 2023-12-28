package nh.recipify.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "instructions")
public class Instruction {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonIgnore
    private Long id;

    @ManyToOne
    @JoinColumn(name="recipe_id", nullable = false)
    @JsonIgnore
    private Recipe recipe;

    @Column(nullable = false)
    private Integer orderNo;

    @Column(nullable = false)
    private String description;

    public Long getId() {
        return id;
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Instruction that = (Instruction) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Ingredient{" +
               "id=" + id +
               ", description='" + description + '\'' +
               ", orderNo=" + orderNo +
               '}';
    }
}
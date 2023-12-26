package nh.recipify.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonView;
import jakarta.persistence.*;
import nh.recipify.domain.api.RecipeViews;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonIgnore
    private Long id;

    @Column(nullable = false)
    private String username;

    @Column(nullable = false)
    @JsonIgnore
    private String password;

    @Column(nullable = false)
    @JsonView(RecipeViews.Summary.class)
    private String fullname;

    public String getUsername() {
        return username;
    }

    public String getFullname() {
        return fullname;
    }
}
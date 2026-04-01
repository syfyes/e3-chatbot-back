package edu.ban7.e3chatbotback.model;

import com.fasterxml.jackson.annotation.JsonView;
import edu.ban7.e3chatbotback.view.RecipeView;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonView
    private Integer id;

    @Column
    @JsonView(RecipeView.class)
    private String name;
}

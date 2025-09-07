package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "comment_states")
public class CommentState {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @NotBlank
    @Size(max = 30)
    @Column(name = "state", nullable = false, length = 30)
    private String state;

    @OneToMany(mappedBy = "commentState")
    private List<Comment> comments = new ArrayList<>();
}
package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "comments")
public class Comment {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @NotBlank
    @Size(max = 50)
    @Column(name = "comment", nullable = false, length = 50)
    private String comment;

    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @ManyToOne
    @JoinColumn(name = "comment_state_id", nullable = false)
    private CommentState commentState;

    @ManyToOne
    @JoinColumn(name = "users_cc", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "planning_versions_id", nullable = false)
    private PlanningVersion planningVersion;
}

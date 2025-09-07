package com.example.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "planning_versions")
public class PlanningVersion {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @ManyToOne
    @JoinColumn(name = "plannings_id", nullable = false)
    private Planning planning;

    @OneToMany(mappedBy = "planningVersion")
    private List<Comment> comments = new ArrayList<>();

    @ManyToMany
    @JoinTable(
        name = "plannings_classes",
        joinColumns = @JoinColumn(name = "planning_versions_id"),
        inverseJoinColumns = @JoinColumn(name = "classes_id")
    )
    private List<Class> classes = new ArrayList<>();
}
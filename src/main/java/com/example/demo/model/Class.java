package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "classes")
public class Class {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @NotNull
    @Column(name = "start_time", nullable = false)
    private LocalDateTime startTime;

    @NotNull
    @Column(name = "end_time", nullable = false)
    private LocalDateTime endTime;

    @ManyToOne
    @JoinColumn(name = "groups_id", nullable = false)
    private Group group;

    @ManyToOne
    @JoinColumn(name = "format_types_id", nullable = false)
    private FormatType formatType;

    @ManyToMany(mappedBy = "classes")
    private List<PlanningVersion> planningVersions = new ArrayList<>();

    @ManyToMany
    @JoinTable(
        name = "classes_conflicts",
        joinColumns = @JoinColumn(name = "classes_id"),
        inverseJoinColumns = @JoinColumn(name = "conflicts_id")
    )
    private List<Conflict> conflicts = new ArrayList<>();
}
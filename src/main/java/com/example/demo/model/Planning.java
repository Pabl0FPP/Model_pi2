package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "plannings")
public class Planning {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @NotNull
    @Column(name = "start_date", nullable = false)
    private LocalDate startDate;

    @NotNull
    @Column(name = "end_date", nullable = false)
    private LocalDate endDate;

    @NotNull
    @Column(name = "semester", nullable = false)
    private Integer semester;

    @NotNull
    @Column(name = "total_classes", nullable = false)
    private Integer totalClasses;

    @NotBlank
    @Size(max = 100)
    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @ManyToOne
    @JoinColumn(name = "academic_programs_id", nullable = false)
    private AcademicProgram academicProgram;

    @ManyToOne
    @JoinColumn(name = "planning_states_id", nullable = false)
    private PlanningState planningState;

    @ManyToOne
    @JoinColumn(name = "users_cc", nullable = false)
    private User user;

    @OneToMany(mappedBy = "planning")
    private List<PlanningVersion> planningVersions = new ArrayList<>();
}
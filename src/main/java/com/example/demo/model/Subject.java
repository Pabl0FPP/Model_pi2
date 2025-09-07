package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
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
@Table(name = "subjects")
public class Subject {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @Size(max = 40)
    @Column(name = "name", length = 40)
    private String name;

    @NotNull
    @Column(name = "semester", nullable = false)
    private Integer semester;

    @NotNull
    @Column(name = "credits", nullable = false)
    private Integer credits;

    @NotNull
    @Column(name = "intensity", nullable = false)
    private Integer intensity;

    @Column(name = "order_num")
    private Integer orderNum;

    @Column(name = "group_num")
    private Integer groupNum;

    @ManyToOne
    @JoinColumn(name = "academic_programs_id", nullable = false)
    private AcademicProgram academicProgram;

    @OneToMany(mappedBy = "subject")
    private List<Group> groups = new ArrayList<>();

    @ManyToMany(mappedBy = "subjects")
    private List<Teacher> teachers = new ArrayList<>();
}
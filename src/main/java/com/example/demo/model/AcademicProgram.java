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
@Table(name = "academic_programs")
public class AcademicProgram {
    @Id
    @Column(name = "id", length = 10)
    private String id;

    @NotBlank
    @Size(max = 40)
    @Column(name = "name", nullable = false, length = 40)
    private String name;

    @NotBlank
    @Size(max = 20)
    @Column(name = "approvation_year", nullable = false, length = 20)
    private String approvationYear;

    @ManyToOne
    @JoinColumn(name = "faculties_id", nullable = false)
    private Faculty faculty;

    @OneToMany(mappedBy = "academicProgram")
    private List<Subject> subjects = new ArrayList<>();

    @OneToMany(mappedBy = "academicProgram")
    private List<Planning> plannings = new ArrayList<>();

    @ManyToMany(mappedBy = "academicPrograms")
    private List<User> users = new ArrayList<>();
}
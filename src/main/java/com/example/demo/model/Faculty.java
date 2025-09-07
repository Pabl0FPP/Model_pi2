package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "faculties")
public class Faculty {
    @Id
    @Column(name = "id")
    private String id = UUID.randomUUID().toString();

    @NotBlank
    @Size(max = 30)
    @Column(name = "name", nullable = false, length = 30)
    private String name;

    @OneToMany(mappedBy = "faculty")
    private List<AcademicProgram> academicPrograms = new ArrayList<>();
}

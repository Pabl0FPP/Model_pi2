package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
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
@Table(name = "users")
public class User {
    @Id
    @Column(name = "cc", length = 30)
    private String cc;

    @NotBlank
    @Size(max = 50)
    @Column(name = "name", nullable = false, length = 50)
    private String name;

    @NotBlank
    @Email
    @Size(max = 70)
    @Column(name = "email", nullable = false, length = 70)
    private String email;

    @NotBlank
    @Size(max = 60)
    @Column(name = "password", nullable = false, length = 60)
    private String password;

    @ManyToMany
    @JoinTable(
        name = "users_roles",
        joinColumns = @JoinColumn(name = "users_cc"),
        inverseJoinColumns = @JoinColumn(name = "roles_id")
    )
    private List<Role> roles = new ArrayList<>();

    @ManyToMany
    @JoinTable(
        name = "users_academic_programs",
        joinColumns = @JoinColumn(name = "users_cc"),
        inverseJoinColumns = @JoinColumn(name = "academic_programs_id")
    )
    private List<AcademicProgram> academicPrograms = new ArrayList<>();

    @OneToMany(mappedBy = "user")
    private List<Comment> comments = new ArrayList<>();
}
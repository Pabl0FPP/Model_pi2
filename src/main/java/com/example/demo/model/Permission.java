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
@Table(name = "permissions")
public class Permission {
    @Id
    @Column(name = "id")
    private String id;

    @NotBlank
    @Size(max = 40)
    @Column(name = "name", nullable = false, length = 40)
    private String name;

    @NotBlank
    @Size(max = 250)
    @Column(name = "description", nullable = false, length = 250)
    private String description;

    @ManyToMany(mappedBy = "permissions")
    private List<Role> roles = new ArrayList<>();
}
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
@Table(name = "roles")
public class Role {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @NotBlank
    @Size(max = 40)
    @Column(name = "name", nullable = false, length = 40)
    private String name;

    @ManyToMany
    @JoinTable(
        name = "roles_permissions",
        joinColumns = @JoinColumn(name = "roles_id"),
        inverseJoinColumns = @JoinColumn(name = "permissions_id")
    )
    private List<Permission> permissions = new ArrayList<>();

    @ManyToMany(mappedBy = "roles")
    private List<User> users = new ArrayList<>();
}
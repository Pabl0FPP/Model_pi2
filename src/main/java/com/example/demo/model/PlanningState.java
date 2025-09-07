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
@Table(name = "planning_states")
public class PlanningState {
    @Id
    @Column(name = "id")
    private String id = UUID.randomUUID().toString();

    @NotBlank
    @Size(max = 30)
    @Column(name = "state", nullable = false, length = 30)
    private String state;

    @OneToMany(mappedBy = "planning_states")
    private List<Planning> plannings = new ArrayList<>();
}

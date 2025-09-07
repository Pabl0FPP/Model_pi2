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
@Table(name = "contract_types")
public class ContractType {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @NotBlank
    @Size(max = 5)
    @Column(name = "type", nullable = false, length = 5)
    private String type;

    @Size(max = 50)
    @Column(name = "description", length = 50)
    private String description;

    @OneToMany(mappedBy = "contractType")
    private List<Teacher> teachers = new ArrayList<>();
}
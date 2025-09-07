package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.ArrayList;

import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "format_types")
public class FormatType {
    @Id
    @Column(name = "id")
    private String id = UUID.randomUUID().toString();

    @NotBlank
    @Size(max = 10)
    @Column(name = "type", nullable = false, length = 10)
    private String type;

    @OneToMany(mappedBy = "formatType")
    private List<Class> classes = new ArrayList<>();
}

package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "conflicts")
public class Conflict {
    @Id
    @Column(name = "id", length = 30)
    private String id;

    @NotBlank
    @Size(max = 100)
    @Column(name = "description", nullable = false, length = 100)
    private String description;

    @Column(name = "detected_at")
    private LocalDateTime detectedAt;

    @ManyToMany(mappedBy = "conflicts")
    private List<Class> classes = new ArrayList<>();
}
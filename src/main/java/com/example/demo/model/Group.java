package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
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
@Table(name = "groups")
public class Group {
    @Id
    @Column(name = "nrc", length = 30)
    private String nrc;

    @NotBlank
    @Size(max = 10)
    @Column(name = "group_name", nullable = false, length = 10)
    private String groupName;

    @NotNull
    @Column(name = "semester", nullable = false)
    private Integer semester;

    @ManyToOne
    @JoinColumn(name = "subjects_id", nullable = false)
    private Subject subject;

    @ManyToOne
    @JoinColumn(name = "teachers_id", nullable = false)
    private Teacher teacher;

    @OneToMany(mappedBy = "group")
    private List<Class> classes = new ArrayList<>();
}
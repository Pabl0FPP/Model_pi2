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
@Table(name = "teachers")
public class Teacher {
    @Id
    @Column(name = "cc", length = 30)
    private String cc;

    @NotBlank
    @Size(max = 50)
    @Column(name = "full_name", nullable = false, length = 50)
    private String fullName;

    @NotBlank
    @Size(max = 40)
    @Column(name = "city", nullable = false, length = 40)
    private String city;

    @NotBlank
    @Email
    @Size(max = 40)
    @Column(name = "email1", nullable = false, length = 40)
    private String email1;

    @Email
    @Size(max = 40)
    @Column(name = "email2", length = 40)
    private String email2;

    @Email
    @Size(max = 30)
    @Column(name = "email3", length = 30)
    private String email3;

    @Size(max = 30)
    @Column(name = "phone", length = 30)
    private String phone;

    @NotBlank
    @Column(name = "is_active", nullable = false)
    private Boolean isActive;

    @Size(max = 40)
    @Column(name = "eps", length = 40)
    private String eps;

    @Size(max = 40)
    @Column(name = "pension_found", length = 40)
    private String pensionFound;

    @Size(max = 40)
    @Column(name = "occupational_risk_administrators", length = 40)
    private String occupationalRiskAdministrators;

    @Size(max = 40)
    @Column(name = "account_number", length = 40)
    private String accountNumber;

    @Size(max = 40)
    @Column(name = "bank", length = 40)
    private String bank;

    @Size(max = 100)
    @Column(name = "observations", length = 100)
    private String observations;

    @NotBlank
    @Size(max = 30)
    @Column(name = "academic_title", nullable = false, length = 30)
    private String academicTitle;

    @ManyToOne
    @JoinColumn(name = "contract_type_id", nullable = false)
    private ContractType contractType;

    @OneToMany(mappedBy = "teacher")
    private List<Group> groups = new ArrayList<>();

    @OneToMany(mappedBy = "teacher")
    private List<UnavailableTimeSlot> unavailableTimeSlots = new ArrayList<>();

    @ManyToMany
    @JoinTable(
        name = "teachers_subjects",
        joinColumns = @JoinColumn(name = "teachers_cc"),
        inverseJoinColumns = @JoinColumn(name = "subjects_id")
    )
    private List<Subject> subjects = new ArrayList<>();
}
-- === FACULTIES ===
INSERT INTO faculties (id, name) VALUES ('FAC001', 'Barberi Faculty');

-- === ACADEMIC_PROGRAMS ===
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP001', 'Computer Science', '2010', 'FAC001');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP002', 'Systems Engineering', '2008', 'FAC001');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP003', 'Software Engineering', '2015', 'FAC001');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP004', 'Industrial Design', '2012', 'FAC001');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP005', 'Biomedical Engineering', '2020', 'FAC001');

-- === SUBJECTS ===
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB001', 'Databases', 5, 4, 5, 'AP001', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB002', 'Programming I', 2, 4, 6, 'AP001', 2, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB003', 'Data Structures', 3, 4, 5, 'AP001', 3, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB004', 'Software Engineering', 4, 3, 4, 'AP002', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB005', 'Object Oriented Programming', 3, 4, 6, 'AP003', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB006', 'Design Thinking', 1, 3, 4, 'AP004', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB007', 'Human-Computer Interaction', 2, 3, 4, 'AP004', 2, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB008', 'Biomedical Instrumentation', 4, 4, 5, 'AP005', 1, 1);

-- === CONTRACT_TYPES ===
INSERT INTO contract_types (id, type, description)
VALUES ('CT001', 'FT', 'Full-time');
INSERT INTO contract_types (id, type, description)
VALUES ('CT002', 'PT', 'Part-time');
INSERT INTO contract_types (id, type, description)
VALUES ('CT003', 'CNT', 'Contract');
INSERT INTO contract_types (id, type, description)
VALUES ('CT004', 'TMP', 'Temporary');

-- === TEACHERS ===
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T001', 'Dr. Alice Johnson', 'Cali', 'alice.johnson@icesi.edu.co', true, 'PhD in Computer Science', 'CT001');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T002', 'Prof. Carlos Mendez', 'Cali', 'carlos.mendez@icesi.edu.co', true, 'MSc in Systems Engineering', 'CT002');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T003', 'Dr. Diana Rodriguez', 'Cali', 'diana.rodriguez@icesi.edu.co', true, 'PhD in Software Engineering', 'CT001');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T004', 'Prof. Eduardo Vargas', 'Cali', 'eduardo.vargas@icesi.edu.co', true, 'MSc in Industrial Design', 'CT003');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T005', 'Dr. Fernanda Torres', 'Cali', 'fernanda.torres@icesi.edu.co', true, 'PhD in Biomedical Engineering', 'CT001');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T006', 'Prof. Miguel Sanchez', 'Cali', 'miguel.sanchez@icesi.edu.co', true, 'MSc in Mechanical Engineering', 'CT004');

-- === GROUPS ===
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G001', '01', 5, 'SUB001', 'T001');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G002', '02', 5, 'SUB001', 'T003');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G003', '01', 2, 'SUB002', 'T001');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G004', '01', 3, 'SUB003', 'T003');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G005', '01', 4, 'SUB004', 'T004');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G006', '01', 3, 'SUB005', 'T002');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G007', '01', 1, 'SUB006', 'T005');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G008', '01', 4, 'SUB008', 'T006');

-- === FORMAT_TYPES ===
INSERT INTO format_types (id, type) VALUES ('FT001', 'Lecture');
INSERT INTO format_types (id, type) VALUES ('FT002', 'Lab');
INSERT INTO format_types (id, type) VALUES ('FT003', 'Workshop');
INSERT INTO format_types (id, type) VALUES ('FT004', 'Seminar');

-- === CLASSES ===
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C001', NOW(), NOW() + INTERVAL '2 hours', 'G001', 'FT001');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C002', NOW(), NOW() + INTERVAL '3 hours', 'G002', 'FT002');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C003', NOW() + INTERVAL '1 day', NOW() + INTERVAL '1 day' + INTERVAL '2 hours', 'G003', 'FT001');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C004', NOW() + INTERVAL '2 days', NOW() + INTERVAL '2 days' + INTERVAL '1.5 hours', 'G004', 'FT003');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C005', NOW() + INTERVAL '3 days', NOW() + INTERVAL '3 days' + INTERVAL '2 hours', 'G005', 'FT002');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C006', NOW() + INTERVAL '4 days', NOW() + INTERVAL '4 days' + INTERVAL '1 hour', 'G006', 'FT004');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C007', NOW() + INTERVAL '5 days', NOW() + INTERVAL '5 days' + INTERVAL '2 hours', 'G007', 'FT001');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C008', NOW() + INTERVAL '6 days', NOW() + INTERVAL '6 days' + INTERVAL '1.5 hours', 'G008', 'FT003');

-- === PLANNING_STATES ===
INSERT INTO planning_states (id, state) VALUES ('PS001', 'Draft');
INSERT INTO planning_states (id, state) VALUES ('PS002', 'Approved');
INSERT INTO planning_states (id, state) VALUES ('PS003', 'In Review');
INSERT INTO planning_states (id, state) VALUES ('PS004', 'Rejected');

-- === USERS ===
INSERT INTO users (cc, name, email, password)
VALUES ('U001', 'Dr. Alice Johnson', 'alice.johnson@icesi.edu.co', 'pass1');
INSERT INTO users (cc, name, email, password)
VALUES ('U002', 'Prof. Carlos Mendez', 'carlos.mendez@icesi.edu.co', 'pass2');
INSERT INTO users (cc, name, email, password)
VALUES ('U003', 'Dr. Diana Rodriguez', 'diana.rodriguez@icesi.edu.co', 'pass3');
INSERT INTO users (cc, name, email, password)
VALUES ('U004', 'System Administrator', 'admin@icesi.edu.co', 'pass4');
INSERT INTO users (cc, name, email, password)
VALUES ('U005', 'Academic Coordinator', 'coordinator@icesi.edu.co', 'pass5');
INSERT INTO users (cc, name, email, password)
VALUES ('U006', 'Prof. Eduardo Vargas', 'eduardo.vargas@icesi.edu.co', 'pass6');

-- === ROLES ===
INSERT INTO roles (id, name) VALUES ('R001', 'Teacher');
INSERT INTO roles (id, name) VALUES ('R002', 'Administrator');
INSERT INTO roles (id, name) VALUES ('R003', 'Coordinator');

-- === PERMISSIONS ===
INSERT INTO permissions (id, name, description)
VALUES ('P001', 'ViewClasses', 'Can view classes');
INSERT INTO permissions (id, name, description)
VALUES ('P002', 'EditPlanning', 'Can edit planning');
INSERT INTO permissions (id, name, description)
VALUES ('P003', 'ManageUsers', 'Can manage users');
INSERT INTO permissions (id, name, description)
VALUES ('P004', 'ViewReports', 'Can view reports');
INSERT INTO permissions (id, name, description)
VALUES ('P005', 'ManageSubjects', 'Can manage subjects');
INSERT INTO permissions (id, name, description)
VALUES ('P006', 'ApproveSchedules', 'Can approve schedules');

-- === ROLES_PERMISSIONS ===
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R001', 'P001'); -- Teacher: Read access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R001', 'P002'); -- Teacher: Write access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P001'); -- Administrator: Read access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P002'); -- Administrator: Write access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P003'); -- Administrator: Delete access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P004'); -- Administrator: Admin access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R003', 'P001'); -- Coordinator: Read access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R003', 'P002'); -- Coordinator: Write access
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R003', 'P005'); -- Coordinator: Approve access

-- === USERS_ROLES ===
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U001', 'R001'); -- Dr. Alice Johnson: Teacher
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U002', 'R001'); -- Prof. Carlos Mendez: Teacher
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U003', 'R001'); -- Dr. Diana Rodriguez: Teacher
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U004', 'R002'); -- System Administrator: Administrator
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U005', 'R003'); -- Academic Coordinator: Coordinator
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U006', 'R001'); -- Prof. Eduardo Vargas: Teacher

-- === USERS_ACADEMIC_PROGRAMS ===
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U001', 'AP001');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U003', 'AP001');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U005', 'AP002');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U002', 'AP003');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U006', 'AP004');

-- === PLANNINGS ===
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL001', CURRENT_DATE, CURRENT_DATE + INTERVAL '4 months', 2, 30, 'AP001', 'PS001', 'Planning CS 2025');
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL002', CURRENT_DATE + INTERVAL '1 month', CURRENT_DATE + INTERVAL '5 months', 1, 25, 'AP002', 'PS002', 'Fine Arts Schedule Spring');
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL003', CURRENT_DATE + INTERVAL '2 months', CURRENT_DATE + INTERVAL '6 months', 3, 35, 'AP003', 'PS003', 'Systems Engineering Fall');
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL004', CURRENT_DATE + INTERVAL '3 months', CURRENT_DATE + INTERVAL '7 months', 1, 20, 'AP004', 'PS001', 'Mathematics Basic Schedule');

-- === PLANNING_VERSIONS ===
INSERT INTO planning_versions (id, plannings_id) VALUES ('PV001', 'PL001');
INSERT INTO planning_versions (id, plannings_id) VALUES ('PV002', 'PL002');
INSERT INTO planning_versions (id, plannings_id) VALUES ('PV003', 'PL003');
INSERT INTO planning_versions (id, plannings_id) VALUES ('PV004', 'PL001');
INSERT INTO planning_versions (id, plannings_id) VALUES ('PV005', 'PL004');

-- === USERS_PLANNINGS ===
INSERT INTO users_plannings (users_cc, plannings_id) VALUES ('U002', 'PL001');
INSERT INTO users_plannings (users_cc, plannings_id) VALUES ('U002', 'PL003');
INSERT INTO users_plannings (users_cc, plannings_id) VALUES ('U006', 'PL002');
INSERT INTO users_plannings (users_cc, plannings_id) VALUES ('U006', 'PL004');
INSERT INTO users_plannings (users_cc, plannings_id) VALUES ('U004', 'PL001');

-- === PLANNINGS_CLASSES ===
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C001', 'PV001');
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C002', 'PV002');
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C003', 'PV001');
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C004', 'PV003');
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C005', 'PV003');
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C006', 'PV003');
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C007', 'PV005');

-- === COMMENT_STATES ===
INSERT INTO comment_states (id, state) VALUES ('CS001', 'Pending');
INSERT INTO comment_states (id, state) VALUES ('CS002', 'Resolved');
INSERT INTO comment_states (id, state) VALUES ('CS003', 'In Progress');
INSERT INTO comment_states (id, state) VALUES ('CS004', 'Rejected');

-- === COMMENTS ===
INSERT INTO comments (id, comment, comment_state_id, users_cc, created_at, planning_versions_id)
VALUES ('CM001', 'Need to adjust schedule', 'CS001', 'U001', NOW(), 'PV001');
INSERT INTO comments (id, comment, comment_state_id, users_cc, created_at, planning_versions_id)
VALUES ('CM002', 'Classroom conflict detected', 'CS003', 'U002', NOW(), 'PV001');
INSERT INTO comments (id, comment, comment_state_id, users_cc, created_at, planning_versions_id)
VALUES ('CM003', 'Schedule looks good', 'CS002', 'U003', NOW(), 'PV002');
INSERT INTO comments (id, comment, comment_state_id, users_cc, created_at, planning_versions_id)
VALUES ('CM004', 'Need more lab sessions', 'CS001', 'U001', NOW(), 'PV003');
INSERT INTO comments (id, comment, comment_state_id, users_cc, created_at, planning_versions_id)
VALUES ('CM005', 'Perfect timing for mathematics', 'CS002', 'U005', NOW(), 'PV005');

-- === CONFLICTS ===
INSERT INTO conflicts (id, description, detected_at)
VALUES ('CF001', 'Classroom double-booked', NOW());
INSERT INTO conflicts (id, description, detected_at)
VALUES ('CF002', 'Teacher schedule overlap', NOW());
INSERT INTO conflicts (id, description, detected_at)
VALUES ('CF003', 'Room capacity exceeded', NOW());
INSERT INTO conflicts (id, description, detected_at)
VALUES ('CF004', 'Equipment not available', NOW());

-- === CLASSES_CONFLICTS ===
INSERT INTO classes_conflicts (conflicts_id, classes_id) VALUES ('CF001', 'C001');
INSERT INTO classes_conflicts (conflicts_id, classes_id) VALUES ('CF001', 'C003');
INSERT INTO classes_conflicts (conflicts_id, classes_id) VALUES ('CF002', 'C004');
INSERT INTO classes_conflicts (conflicts_id, classes_id) VALUES ('CF003', 'C005');
INSERT INTO classes_conflicts (conflicts_id, classes_id) VALUES ('CF004', 'C002');

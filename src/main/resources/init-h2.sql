-- === FACULTIES ===
INSERT INTO faculties (id, name) VALUES ('FAC001', 'Engineering');
INSERT INTO faculties (id, name) VALUES ('FAC002', 'Arts');
INSERT INTO faculties (id, name) VALUES ('FAC003', 'Sciences');
INSERT INTO faculties (id, name) VALUES ('FAC004', 'Business Administration');

-- === ACADEMIC_PROGRAMS ===
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP001', 'Computer Science', '2010', 'FAC001');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP002', 'Fine Arts', '2015', 'FAC002');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP003', 'Systems Engineering', '2008', 'FAC001');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP004', 'Mathematics', '2012', 'FAC003');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP005', 'Business Administration', '2020', 'FAC004');

-- === SUBJECTS ===
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB001', 'Databases', 5, 4, 5, 'AP001', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB002', 'Painting I', 1, 3, 4, 'AP002', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB003', 'Programming I', 2, 4, 6, 'AP001', 2, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB004', 'Data Structures', 3, 4, 5, 'AP001', 3, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB005', 'Software Engineering', 4, 3, 4, 'AP003', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB006', 'Calculus I', 1, 4, 6, 'AP004', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB007', 'Statistics', 2, 3, 4, 'AP004', 2, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB008', 'Marketing', 3, 3, 4, 'AP005', 1, 1);

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
VALUES ('T001', 'Alice Johnson', 'Bogotá', 'alice@uni.edu', true, 'PhD', 'CT001');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T002', 'Bob Smith', 'Medellín', 'bob@uni.edu', true, 'MSc', 'CT002');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T003', 'Carlos Mendez', 'Cali', 'carlos@uni.edu', true, 'PhD', 'CT001');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T004', 'Diana Rodriguez', 'Barranquilla', 'diana@uni.edu', true, 'MSc', 'CT003');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T005', 'Eduardo Vargas', 'Bogotá', 'eduardo@uni.edu', true, 'PhD', 'CT001');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T006', 'Fernanda Torres', 'Medellín', 'fernanda@uni.edu', false, 'MSc', 'CT004');

-- === GROUPS ===
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G001', '01', 5, 'SUB001', 'T001');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G002', '01', 1, 'SUB002', 'T002');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G003', '02', 5, 'SUB001', 'T003');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G004', '01', 2, 'SUB003', 'T001');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G005', '01', 3, 'SUB004', 'T003');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G006', '01', 4, 'SUB005', 'T004');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G007', '01', 1, 'SUB006', 'T005');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G008', '01', 3, 'SUB008', 'T004');

-- === FORMAT_TYPES ===
INSERT INTO format_types (id, type) VALUES ('FT001', 'Lecture');
INSERT INTO format_types (id, type) VALUES ('FT002', 'Lab');
INSERT INTO format_types (id, type) VALUES ('FT003', 'Workshop');
INSERT INTO format_types (id, type) VALUES ('FT004', 'Seminar');

-- === CLASSES ===
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C001', NOW(), DATEADD('HOUR', 2, NOW()), 'G001', 'FT001');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C002', NOW(), DATEADD('HOUR', 3, NOW()), 'G002', 'FT002');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C003', DATEADD('DAY', 1, NOW()), DATEADD('HOUR', 2, DATEADD('DAY', 1, NOW())), 'G003', 'FT001');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C004', DATEADD('DAY', 2, NOW()), DATEADD('MINUTE', 90, DATEADD('DAY', 2, NOW())), 'G004', 'FT003');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C005', DATEADD('DAY', 3, NOW()), DATEADD('HOUR', 2, DATEADD('DAY', 3, NOW())), 'G005', 'FT002');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C006', DATEADD('DAY', 4, NOW()), DATEADD('HOUR', 1, DATEADD('DAY', 4, NOW())), 'G006', 'FT004');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C007', DATEADD('DAY', 5, NOW()), DATEADD('HOUR', 2, DATEADD('DAY', 5, NOW())), 'G007', 'FT001');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C008', DATEADD('DAY', 6, NOW()), DATEADD('MINUTE', 90, DATEADD('DAY', 6, NOW())), 'G008', 'FT003');

-- === PLANNING_STATES ===
INSERT INTO planning_states (id, state) VALUES ('PS001', 'Draft');
INSERT INTO planning_states (id, state) VALUES ('PS002', 'Approved');
INSERT INTO planning_states (id, state) VALUES ('PS003', 'In Review');
INSERT INTO planning_states (id, state) VALUES ('PS004', 'Rejected');

-- === USERS ===
INSERT INTO users (cc, name, email, password)
VALUES ('U001', 'Student One', 'student1@uni.edu', 'pass1');
INSERT INTO users (cc, name, email, password)
VALUES ('U002', 'Coordinator', 'coord@uni.edu', 'pass2');
INSERT INTO users (cc, name, email, password)
VALUES ('U003', 'Student Two', 'student2@uni.edu', 'pass3');
INSERT INTO users (cc, name, email, password)
VALUES ('U004', 'Administrator', 'admin@uni.edu', 'pass4');
INSERT INTO users (cc, name, email, password)
VALUES ('U005', 'Student Three', 'student3@uni.edu', 'pass5');
INSERT INTO users (cc, name, email, password)
VALUES ('U006', 'Faculty Coordinator', 'faculty.coord@uni.edu', 'pass6');

-- === ROLES ===
INSERT INTO roles (id, name) VALUES ('R001', 'Student');
INSERT INTO roles (id, name) VALUES ('R002', 'Coordinator');
INSERT INTO roles (id, name) VALUES ('R003', 'Administrator');
INSERT INTO roles (id, name) VALUES ('R004', 'Faculty Coordinator');

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
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R001', 'P001');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P002');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P001');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P004');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R003', 'P003');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R003', 'P004');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R003', 'P001');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R004', 'P005');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R004', 'P006');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R004', 'P001');

-- === USERS_ROLES ===
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U001', 'R001');
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U002', 'R002');
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U003', 'R001');
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U004', 'R003');
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U005', 'R001');
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U006', 'R004');

-- === USERS_ACADEMIC_PROGRAMS ===
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U001', 'AP001');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U003', 'AP001');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U005', 'AP002');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U002', 'AP003');
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U006', 'AP004');

-- === PLANNINGS ===
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL001', CURRENT_DATE, DATEADD('MONTH', 4, CURRENT_DATE), 2, 30, 'AP001', 'PS001', 'Planning CS 2025');
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL002', DATEADD('MONTH', 1, CURRENT_DATE), DATEADD('MONTH', 5, CURRENT_DATE), 1, 25, 'AP002', 'PS002', 'Fine Arts Schedule Spring');
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL003', DATEADD('MONTH', 2, CURRENT_DATE), DATEADD('MONTH', 6, CURRENT_DATE), 3, 35, 'AP003', 'PS003', 'Systems Engineering Fall');
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL004', DATEADD('MONTH', 3, CURRENT_DATE), DATEADD('MONTH', 7, CURRENT_DATE), 1, 20, 'AP004', 'PS001', 'Mathematics Basic Schedule');

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

-- === FACULTIES ===
INSERT INTO faculties (id, name) VALUES ('FAC001', 'Engineering');
INSERT INTO faculties (id, name) VALUES ('FAC002', 'Arts');

-- === ACADEMIC_PROGRAMS ===
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP001', 'Computer Science', '2010', 'FAC001');
INSERT INTO academic_programs (id, name, approvation_year, faculties_id)
VALUES ('AP002', 'Fine Arts', '2015', 'FAC002');

-- === SUBJECTS ===
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB001', 'Databases', 5, 4, 5, 'AP001', 1, 1);
INSERT INTO subjects (id, name, semester, credits, intensity, academic_programs_id, order_num, group_num)
VALUES ('SUB002', 'Painting I', 1, 3, 4, 'AP002', 1, 1);

-- === CONTRACT_TYPES ===
INSERT INTO contract_types (id, type, description)
VALUES ('CT001', 'FT', 'Full-time');
INSERT INTO contract_types (id, type, description)
VALUES ('CT002', 'PT', 'Part-time');

-- === TEACHERS ===
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T001', 'Alice Johnson', 'Bogotá', 'alice@uni.edu', true, 'PhD', 'CT001');
INSERT INTO teachers (cc, full_name, city, email1, is_active, academic_title, contract_type_id)
VALUES ('T002', 'Bob Smith', 'Medellín', 'bob@uni.edu', true, 'MSc', 'CT002');

-- === GROUPS ===
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G001', '01', 5, 'SUB001', 'T001');
INSERT INTO groups (nrc, group_name, semester, subjects_id, teachers_id)
VALUES ('G002', '01', 1, 'SUB002', 'T002');

-- === FORMAT_TYPES ===
INSERT INTO format_types (id, type) VALUES ('FT001', 'Lecture');
INSERT INTO format_types (id, type) VALUES ('FT002', 'Lab');

-- === CLASSES ===
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C001', NOW(), DATEADD('HOUR', 2, NOW()), 'G001', 'FT001');
INSERT INTO classes (id, start_time, end_time, groups_id, format_types_id)
VALUES ('C002', NOW(), DATEADD('HOUR', 3, NOW()), 'G002', 'FT002');

-- === PLANNING_STATES ===
INSERT INTO planning_states (id, state) VALUES ('PS001', 'Draft');
INSERT INTO planning_states (id, state) VALUES ('PS002', 'Approved');

-- === USERS ===
INSERT INTO users (cc, name, email, password)
VALUES ('U001', 'Student One', 'student1@uni.edu', 'pass1');
INSERT INTO users (cc, name, email, password)
VALUES ('U002', 'Coordinator', 'coord@uni.edu', 'pass2');

-- === ROLES ===
INSERT INTO roles (id, name) VALUES ('R001', 'Student');
INSERT INTO roles (id, name) VALUES ('R002', 'Coordinator');

-- === PERMISSIONS ===
INSERT INTO permissions (id, name, description)
VALUES ('P001', 'ViewClasses', 'Can view classes');
INSERT INTO permissions (id, name, description)
VALUES ('P002', 'EditPlanning', 'Can edit planning');

-- === ROLE_PERMISSIONS ===
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R001', 'P001');
INSERT INTO roles_permissions (roles_id, permissions_id) VALUES ('R002', 'P002');

-- === USER_ROLES ===
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U001', 'R001');
INSERT INTO users_roles (users_cc, roles_id) VALUES ('U002', 'R002');

-- === USERS_ACADEMIC_PROGRAMS ===
INSERT INTO users_academic_programs (users_cc, academic_programs_id) VALUES ('U001', 'AP001');

-- === PLANNINGS ===
INSERT INTO plannings (id, start_date, end_date, semester, total_classes, academic_programs_id, planning_states_id, name)
VALUES ('PL001', CURRENT_DATE, DATEADD('MONTH', 4, CURRENT_DATE), 2, 30, 'AP001', 'PS001', 'Planning CS 2025');

-- === PLANNING_VERSIONS ===
INSERT INTO planning_versions (id, plannings_id) VALUES ('PV001', 'PL001');

-- === USERS_PLANNINGS ===
INSERT INTO users_plannings (users_cc, plannings_id) VALUES ('U002', 'PL001');

-- === PLANNINGS_CLASSES ===
INSERT INTO plannings_classes (classes_id, planning_versions_id) VALUES ('C001', 'PV001');

-- === COMMENT_STATES ===
INSERT INTO comment_states (id, state) VALUES ('CS001', 'Pending');
INSERT INTO comment_states (id, state) VALUES ('CS002', 'Resolved');

-- === COMMENTS ===
INSERT INTO comments (id, comment, comment_state_id, users_cc, created_at, planning_versions_id)
VALUES ('CM001', 'Need to adjust schedule', 'CS001', 'U001', NOW(), 'PV001');

-- === CONFLICTS ===
INSERT INTO conflicts (id, description, detected_at)
VALUES ('CF001', 'Classroom double-booked', NOW());

-- === CLASSES_CONFLICTS ===
INSERT INTO classes_conflicts (conflicts_id, classes_id) VALUES ('CF001', 'C001');

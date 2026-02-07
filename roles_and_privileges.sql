-- Role Creation
CREATE ROLE admin_role;
CREATE ROLE instructor_role;
CREATE ROLE student_role;

-- Privileges
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin_role;

GRANT SELECT ON courses TO instructor_role;
GRANT SELECT, UPDATE ON grades TO instructor_role;

GRANT SELECT ON courses TO student_role;
GRANT SELECT ON grades TO student_role;

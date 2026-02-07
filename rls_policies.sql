-- Enable RLS
ALTER TABLE grades ENABLE ROW LEVEL SECURITY;

-- Student can see only their own grades
CREATE POLICY student_grade_policy
ON grades
FOR SELECT
TO student_role
USING (student_id = current_setting('app.current_student')::INT);

-- Instructor full access
CREATE POLICY instructor_grade_policy
ON grades
FOR ALL
TO instructor_role
USING (true);

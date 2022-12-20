CREATE OR REPLACE FUNCTION get_data(department_name VARCHAR)
RETURNS TABLE (d_id INTEGER, name VARCHAR, faculty VARCHAR) AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT d_id, name, faculty FROM department WHERE name = $1';
	RAISE NOTICE 'Query=%', str;
	RETURN QUERY EXECUTE str USING department_name;
END;
$$ LANGUAGE plpgsql;

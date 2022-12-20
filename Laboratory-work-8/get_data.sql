CREATE OR REPLACE FUNCTION get_data(department_name VARCHAR)
RETURNS TABLE (d_id INTEGER, name VARCHAR, faculty INTEGER) AS $$
DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT d_id, name, faculty FROM department WHERE name = ''' || department_name || '''';
	RAISE NOTICE 'Query=%', str;
	RETURN QUERY EXECUTE str;
END;
$$ LANGUAGE plpgsql;

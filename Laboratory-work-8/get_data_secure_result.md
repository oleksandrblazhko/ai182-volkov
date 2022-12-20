SELECT * FROM get_data_secure('1'' OR 1=1 -- ');
![image](https://user-images.githubusercontent.com/55044802/208711925-bf92fefc-9192-4895-8332-f0b0eec524d7.png)

SELECT * FROM get_data_secure('1'' UNION (SELECT a1, CAST(a1 AS VARCHAR), CAST(a1 AS INTEGER) FROM (SELECT generate_series a1 FROM generate_series (1,1000)) t1 CROSS JOIN (SELECT * FROM generate_series (1,1000) t2) t3) -- ');
![image](https://user-images.githubusercontent.com/55044802/208712059-58fc9122-1873-4b8a-9f3c-cf7f472101d0.png)

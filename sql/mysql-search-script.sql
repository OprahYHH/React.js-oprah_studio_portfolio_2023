SELECT * FROM uit2bh3x875n9y2o.project P
LEFT JOIN project_category PC ON P.project_id = PC.p_id
LEFT JOIN category C ON PC.c_id = C.category_id
LEFT JOIN project_tags PT ON P.project_id = PT.p_id
LEFT JOIN tags T ON PT.p_id = T.tag_id
WHERE year = 2022;

SELECT * FROM uit2bh3x875n9y2o.project P
LEFT JOIN project_category PC ON P.project_id = PC.p_id
LEFT JOIN category C ON PC.c_id = C.category_id;

SELECT * FROM uit2bh3x875n9y2o.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE P.project_id = 2;

SELECT * FROM uit2bh3x875n9y2o.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE year = 2022;

SELECT * FROM uit2bh3x875n9y2o.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE c_id = 4 ORDER BY project_id;

SELECT * FROM uit2bh3x875n9y2o.project_tags PT 
LEFT JOIN tags T ON T.tag_id = PT.t_id;

SELECT * FROM project;
SELECT * FROM category;

SELECT * FROM tags T
RIGHT JOIN project_tags PT
ON T.tag_id = PT.t_id;

SELECT * FROM project_category PC
LEFT JOIN category C
ON C.category_id = PC.c_id
ORDER BY p_id;


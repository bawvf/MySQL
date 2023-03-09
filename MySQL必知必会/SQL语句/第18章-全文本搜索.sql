USE crashcourse;

-- 18.2-使用全文本搜索
	-- 18。2.2-进行全文本搜索
SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('rabbit');

SELECT note_text
FROM productnotes
WHERE note_text LIKE '%rabbit%';

SELECT note_text,
	MATCH(note_text) AGAINST('rabbit') AS ran
FROM productnotes;

	-- 18.2.3-使用查询扩展
SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('anvils')

SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('anvils' WITH QUERY EXPANSION);

	-- 18.2.4-布尔文本搜索
SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('heavy' IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('heavy -rope*' IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('+rabbit +bait' IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('rabbit bait' IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('"rabbit bait"' IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('>rabbit <carrot' IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE MATCH(note_text) AGAINST('+safe +(<combination)' IN BOOLEAN MODE);
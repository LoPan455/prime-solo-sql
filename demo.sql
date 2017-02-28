


/* Use * for wildcard SELECT all columns */
SELECT * FROM "songs";

/*Limit number of rows*/
SELECT * FROM "songs" LIMIT 10;

/* SELECT  matching on certain criteria with WHERE */
SELECT * FROM "songs" WHERE "id" = 100;

SELECT * from "songs" WHERE "track" LIKE '%er';

SELECT COUNT(*) FROM "songs" WHERE "track" ILIKE '%fire%';

SELECT COUNT(*) FROM "songs" WHERE LOWER("track") LIKE '%fire%';

/* SELECT all columns from songs where artist has 'a' in the name AND was published after 1/1/2000 OR track has fire in the name. */

SELECT * FROM "songs"
WHERE ("artist" LIKE '%a%' AND "published" > '1/1/2000')
OR "track" ILIKE '%fire%';

/* ORDER BY column ASC (or DESC) */
SELECT * FROM "songs" ORDER BY "published" ASC;


/* In summary */
SELECT expressions
FROM tables
[WHERE conditions]
[ORDER BY expression)


/* ALWAYS use a WHERE clause with UPDATE and DELETE statements */


UPDATE "songs" SET "track" = REPLACE("track", 'Fire', 'Phire')
WHERE "track" ILIKE '%fire%';

/* test before DELETE */
SELECT * FROM "songs" WHERE "artist" LIKE '%West' LIMIT 10;


/* the actual DELETE statement */
DELETE from "songs" WHERE "artist" LIKE '%West';
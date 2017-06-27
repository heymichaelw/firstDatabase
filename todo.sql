CREATE TABLE "todos" (
  "id" serial NOT NULL PRIMARY KEY,
  "title" varchar(255) NOT NULL,
  "details" text,
  "priority" integer NOT NULL DEFAULT '1',
  "created_at" timestamp NOT NULL,
  "completed_at" timestamp
);

INSERT INTO todos ("title", "priority", "created_at", "completed_at") VALUES ('Clean car', '2', CURRENT_DATE, CURRENT_DATE);
INSERT INTO todos ("title", "priority", "created_at", "completed_at") VALUES ('Clean bathroom', '1', CURRENT_DATE, null);
INSERT INTO todos ("title", "priority", "created_at", "completed_at") VALUES ('Wash cat', '1', CURRENT_DATE, null);
INSERT INTO todos ("title", "priority", "created_at", "completed_at") VALUES ('Exercise', '3', CURRENT_DATE, null);
INSERT INTO todos ("title", "priority", "created_at", "completed_at") VALUES ('Shop for groceries', '2', CURRENT_DATE, null);

SELECT * from todos WHERE "completed_at" IS NULL;

SELECT * from todos WHERE priority > 1;

UPDATE todos SET completed_at = CURRENT_DATE WHERE id = 2;

DELETE FROM todos WHERE "completed_at" IS NOT NULL;

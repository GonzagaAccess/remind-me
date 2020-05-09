-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Users" (
    "id" int   NOT NULL,
    "name" string   NOT NULL,
    "password" string   NOT NULL,
    "created_at" timestamp   NOT NULL,
    "updated_at" timestamp   NULL,
    CONSTRAINT "pk_Users" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Remembers" (
    "id" int   NOT NULL,
    "id_sender" int   NOT NULL,
    "id_receiver" int   NOT NULL,
    "audio_path" string   NOT NULL,
    "created_at" timestamp   NOT NULL,
    "updated_at" timestamp   NULL,
    CONSTRAINT "pk_Remembers" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "Remembers" ADD CONSTRAINT "fk_Remembers_id_sender" FOREIGN KEY("id_sender")
REFERENCES "Users" ("id");

ALTER TABLE "Remembers" ADD CONSTRAINT "fk_Remembers_id_receiver" FOREIGN KEY("id_receiver")
REFERENCES "Users" ("id");

CREATE INDEX "idx_Users_name"
ON "Users" ("name");


CREATE TABLE "City" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "region" varchar
);

CREATE TABLE "Station" (
  "id" int PRIMARY KEY,
  "city" int,
  "name" varchar,
  "tracks" varchar
);

CREATE TABLE "Train" (
  "id" int PRIMARY KEY,
  "trainnr" int,
  "length" int
);

CREATE TABLE "Connected" (
  "id" int PRIMARY KEY,
  "start_station" int,
  "end_station" int,
  "train" int,
  "depature" timestamp,
  "arrival" timestamp
);

ALTER TABLE "Connected" ADD FOREIGN KEY ("train") REFERENCES "Train" ("id");

ALTER TABLE "Station" ADD FOREIGN KEY ("city") REFERENCES "City" ("id");

ALTER TABLE "Connected" ADD FOREIGN KEY ("start_station") REFERENCES "Station" ("id");

ALTER TABLE "Connected" ADD FOREIGN KEY ("end_station") REFERENCES "Station" ("id");

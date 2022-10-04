CREATE TABLE "StationPersonell" (
  "id" int PRIMARY KEY,
  "persNr" int,
  "name" varchar,
  "station" int
);

CREATE TABLE "Caregiver" (
  "id" int PRIMARY KEY,
  "persNr" int,
  "qualification" varchar
);

CREATE TABLE "Doctor" (
  "id" int PRIMARY KEY,
  "area" varchar,
  "rank" varchar
);

CREATE TABLE "Station" (
  "id" int PRIMARY KEY,
  "statNr" int,
  "name" varchar
);

CREATE TABLE "Room" (
  "id" int PRIMARY KEY,
  "roomNr" int,
  "beds" varchar,
  "station" int
);

CREATE TABLE "Patient" (
  "id" int PRIMARY KEY,
  "doctor" int,
  "patientNr" int,
  "name" varchar,
  "disease" varchar,
  "admission_from" int,
  "admission_to" int,
  "room" int
);

ALTER TABLE "Patient" ADD FOREIGN KEY ("doctor") REFERENCES "Doctor" ("id");

ALTER TABLE "Patient" ADD FOREIGN KEY ("room") REFERENCES "Room" ("id");

ALTER TABLE "Room" ADD FOREIGN KEY ("station") REFERENCES "Station" ("id");

ALTER TABLE "StationPersonell" ADD FOREIGN KEY ("station") REFERENCES "Station" ("id");

ALTER TABLE "StationPersonell" ADD FOREIGN KEY ("persNr") REFERENCES "Caregiver" ("id");

ALTER TABLE "StationPersonell" ADD FOREIGN KEY ("persNr") REFERENCES "Doctor" ("id");

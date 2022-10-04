CREATE TABLE "Book" (
  "id" int PRIMARY KEY,
  "isbn" int,
  "year" int,
  "title" varchar,
  "author" varchar,
  "num_of_pages" int,
  "publisher" int
);

CREATE TABLE "Publisher" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "address" varchar
);

CREATE TABLE "BookCopy" (
  "id" int PRIMARY KEY,
  "number" int,
  "place" varchar,
  "book" int
);

CREATE TABLE "Category" (
  "id" int PRIMARY KEY,
  "name" varchar,
  "subcategory" int
);

CREATE TABLE "Borrow" (
  "id" int PRIMARY KEY,
  "return_date" date,
  "copy" int,
  "reader" int
);

CREATE TABLE "Reader" (
  "id" int PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "address" varchar,
  "birthday" date
);

ALTER TABLE "Category" ADD FOREIGN KEY ("subcategory") REFERENCES "Category" ("id");

ALTER TABLE "BookCopy" ADD FOREIGN KEY ("book") REFERENCES "Book" ("id");

ALTER TABLE "Borrow" ADD FOREIGN KEY ("copy") REFERENCES "BookCopy" ("id");

ALTER TABLE "Borrow" ADD FOREIGN KEY ("reader") REFERENCES "Reader" ("id");

ALTER TABLE "Book" ADD FOREIGN KEY ("publisher") REFERENCES "Publisher" ("id");

CREATE TABLE "Book_Category" (
  "id" int PRIMARY KEY,
  "book_id" int NOT NULL,
  "category_id" int NOT NULL
);

ALTER TABLE "Book_Category" ADD FOREIGN KEY ("book_id") REFERENCES "Book" ("id");

ALTER TABLE "Book_Category" ADD FOREIGN KEY ("category_id") REFERENCES "Category" ("id");

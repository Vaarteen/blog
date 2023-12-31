DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS article;
CREATE TABLE person (
    id_person INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT NOT NULL,
    password TEXT NOT NULL,
    name TEXT NOT NULL UNIQUE
);
CREATE TABLE article (
    id_article INTEGER PRIMARY KEY AUTOINCREMENT,
    created TEXT DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    author INTEGER NOT NULL,
    FOREIGN KEY (author) REFERENCES person (id_person)
);
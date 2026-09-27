CREATE TABLE hosts (
    host_id INTEGER,
    hostname TEXT
);
CREATE TABLE checks (
    host_id INTEGER,
    checked_at TEXT
);
INSERT INTO hosts VALUES (1,'alpha');
INSERT INTO hosts VALUES (2,'bravo');
INSERT INTO hosts VALUES (3,'charlie');
INSERT INTO hosts VALUES (4,'delta');
INSERT INTO checks VALUES (1,'2026-09-25 18:00:00');
INSERT INTO checks VALUES (2,'2026-09-20 10:00:00');
INSERT INTO checks VALUES (3,'2026-09-26 17:30:00');
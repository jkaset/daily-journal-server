CREATE TABLE `Entry` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`date`	DATE NOT NULL,
	`concept`	TEXT NOT NULL,
	`entry`	TEXT NOT NULL,
	`mood_id`	INTEGER NOT NULL,
  FOREIGN KEY(`mood_id`) REFERENCES `Mood`(`id`)
);

CREATE TABLE `Mood` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`label`	TEXT NOT NULL
);

INSERT INTO `Entry` VALUES (null, "01/12/21", "SQL", "I think I am getting the hang of this", "2");
INSERT INTO `Entry` VALUES (null, "01/13/21", "Watchgod", "I'm running it and it works", "4");

INSERT INTO `Mood` VALUES (null, "glad");
INSERT INTO `Mood` VALUES (null, "sad");
INSERT INTO `Mood` VALUES (null, "mad");
INSERT INTO `Mood` VALUES (null, "smart");
INSERT INTO `Mood` VALUES (null, "tired");
INSERT INTO `Mood` VALUES (null, "great");

SELECT
		e.id,
		e.date,
		e.concept,
		e.entry,
		e.mood_id,
		m.label mood_label
FROM Entry e
JOIN Mood m
		ON m.id = e.mood_id;

SELECT
            e.id,
            e.date,
            e.concept,
            e.entry,
            e.mood_id
        FROM entry e
        WHERE e.id = 1;

SELECT * FROM Entry ORDER BY id DESC;
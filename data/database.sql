-- Fichier d'import sql
-- sqlite3 database.db < ./database.sql 

-- deletion des anciennes tables
DROP TABLE IF EXISTS chapter;
DROP TABLE IF EXISTS question;
DROP TABLE IF EXISTS answer;

CREATE TABLE chapter (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT
);

CREATE TABLE question (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    label TEXT,
    chapter_id INTEGER,  -- une question est liée a un chapitre 
    FOREIGN KEY (chapter_id) REFERENCES chapter(id)
);

CREATE TABLE answer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    label TEXT,
    correct BOOLEAN,
    question_id INTEGER,  -- une réponse est liée a une question 
    FOREIGN KEY (question_id) REFERENCES question(id)
);

INSERT INTO chapter(title) VALUES ('Chapitre 1 : Les traitements sur les données à caractère personnel');

INSERT INTO question(label, chapter_id) VALUES ('Quel organisme est censé superviser la protection des données ?', 1);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'RGPD', 1);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'CRIF', 1);
INSERT INTO answer(correct, label, question_id) VALUES (1, 'CNIL', 1);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'OMSF', 1);

INSERT INTO question(label, chapter_id) VALUES ('La Cnil définit qu’une donnée possède un caractère personnel si elle permet : ', 2);
INSERT INTO answer(correct, label, question_id) VALUES (1, 'd’identifier directement ou indirectement une personne physique avec les moyens mis à disposition de tout autre personne.', 2);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'd’identifier directement ou indirectement les préférences et opinions privés d’une personne physique.', 2);
INSERT INTO answer(correct, label, question_id) VALUES (0, "de donner accès à des comptes via récupération ou déduction des moyens d'identification ou d'authentification.", 2);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'd’usurper l’identité d’une autre personne physique par sa simple possession.', 2);
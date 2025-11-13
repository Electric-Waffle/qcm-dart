-- Fichier d'import sql
-- sqlite3 database.db < ./database.sql 

-- deletion des anciennes tables
DROP TABLE chapter;
DROP TABLE question;
DROP TABLE answer;

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

-- ===============================
-- QUESTIONS CHAPITRE 1 : Données à caractère personnel
-- ===============================

INSERT INTO chapter(title) VALUES ('Chapitre 1 : Les traitements sur les données à caractère personnel');

-- Question 1
INSERT INTO question(label, chapter_id) VALUES ('Quel organisme est censé superviser la protection des données ?', 1);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'RGPD', 1);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'CRIF', 1);
INSERT INTO answer(correct, label, question_id) VALUES (1, 'CNIL', 1);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'OMSF', 1);

-- Question 2
INSERT INTO question(label, chapter_id) VALUES ('La Cnil définit qu’une donnée possède un caractère personnel si elle permet : ', 1);
INSERT INTO answer(correct, label, question_id) VALUES (1, 'd’identifier directement ou indirectement une personne physique avec les moyens mis à disposition de tout autre personne.', 2);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'd’identifier directement ou indirectement les préférences et opinions privés d’une personne physique.', 2);
INSERT INTO answer(correct, label, question_id) VALUES (0, "de donner accès à des comptes via récupération ou déduction des moyens d'identification ou d'authentification.", 2);
INSERT INTO answer(correct, label, question_id) VALUES (0, 'd’usurper l’identité d’une autre personne physique par sa simple possession.', 2);

-- Question 3
INSERT INTO question(label, chapter_id)
VALUES ('Selon la CNIL, qu’est-ce qu’une donnée à caractère personnel ?', 1);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Toute information relative à une personne physique identifiée ou identifiable, directement ou indirectement.', 3);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Toute donnée administrative concernant une entreprise.', 3);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Toute information contenue dans un registre public.', 3);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Toute donnée financière transmise à une autorité publique.', 3);


-- Question 4
INSERT INTO question(label, chapter_id)
VALUES ('Parmi les éléments suivants, lequel ne constitue PAS une donnée à caractère personnel ?', 1);

INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une photographie d’une personne.', 4);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Un enregistrement vocal identifiant un individu.', 4);
INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Les coordonnées d’une organisation.', 4);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le nom de famille d’une personne.', 4);


-- Question 5
INSERT INTO question(label, chapter_id)
VALUES ('La CNIL considère comme traitement de données à caractère personnel :', 1);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Toute opération portant sur des données personnelles, informatisée ou non, telle que la collecte, la conservation ou la destruction.', 5);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement les opérations informatisées sur des données numériques.', 5);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les traitements réalisés exclusivement à des fins commerciales.', 5);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les opérations menées uniquement par des organismes publics.', 5);

-- ===============================
-- QUESTIONS CHAPITRE 2 : RGPD et CNIL
-- ===============================
INSERT INTO chapter(title) VALUES ('Chapitre 2 : RGPD et CNIL');

-- Question 6
INSERT INTO question(label, chapter_id)
VALUES ('À quelles organisations s’applique le RGPD ?', 2);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'À toute organisation, publique ou privée, qui traite des données personnelles de résidents de l’Union européenne.', 6);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement aux entreprises privées de plus de 250 salariés situées dans l’Union européenne.', 6);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Exclusivement aux administrations publiques françaises.', 6);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement aux entreprises de traitement de données situées aux États-Unis.', 6);


-- Question 7
INSERT INTO question(label, chapter_id)
VALUES ('Parmi les droits suivants, lequel permet à une personne de récupérer et transférer ses données personnelles ?', 2);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Le droit à la portabilité.', 7);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le droit à l’oubli.', 7);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le droit à la notification.', 7);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le droit à la rectification.', 7);


-- Question 8
INSERT INTO question(label, chapter_id)
VALUES ('Quel est le rôle principal du délégué à la protection des données (DPO) au sein d’une organisation ?', 2);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Assurer la mise en conformité de l’organisation avec le RGPD et conseiller sur la protection des données.', 8);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Contrôler uniquement les aspects techniques de la sécurité informatique.', 8);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Décider des sanctions internes en cas de fuite de données.', 8);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Superviser le développement des logiciels internes de l’entreprise.', 8);

-- Question 9
INSERT INTO question(label, chapter_id)
VALUES ('Selon la CNIL, le principe de finalité signifie que :', 2);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Les données ne peuvent être collectées et utilisées que pour un objectif précis, légal et légitime.', 9);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les données doivent être partagées librement avec d’autres organismes publics.', 9);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les données doivent être conservées indéfiniment pour de futures utilisations possibles.', 9);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les données doivent être accessibles à toute personne qui en fait la demande.', 9);


-- Question 10
INSERT INTO question(label, chapter_id)
VALUES ('Parmi les bases légales suivantes, laquelle correspond à un traitement fondé sur l’accord explicite de la personne ?', 2);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Le consentement.', 10);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’intérêt légitime.', 10);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’obligation légale.', 10);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’intérêt public.', 10);

-- ===============================
-- CHAPITRE 3 : L’identité numérique et ses risques
-- ===============================

-- Question 1 (Chapitre 3)
INSERT INTO question(label, chapter_id)
VALUES ('Quelles sont les trois composantes de l’identité numérique d’une organisation selon la CNIL ?', 3);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'L’identité déclarative, l’identité agissante et l’identité calculée.', 11);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’identité juridique, l’identité fiscale et l’identité sociale.', 11);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’identité interne, l’identité externe et l’identité publique.', 11);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’identité statutaire, l’identité commerciale et l’identité technique.', 11);


-- Question 2 (Chapitre 3)
INSERT INTO question(label, chapter_id)
VALUES ('Quelle affirmation décrit le mieux l’identité déclarative d’une organisation ?', 3);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Elle regroupe les informations que l’organisation choisit volontairement de partager sur le Web.', 12);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Elle correspond aux traces laissées involontairement par les utilisateurs sur le réseau.', 12);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Elle résulte du calcul d’algorithmes à partir des données de navigation.', 12);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Elle contient uniquement le nom de domaine et les adresses IP publiques.', 12);


-- Question 3 (Chapitre 3)
INSERT INTO question(label, chapter_id)
VALUES ('Quelle loi définit l’usurpation d’identité numérique et en fixe les sanctions ?', 3);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'La loi LOPPSI 2 du 14 mars 2011.', 13);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La loi Informatique et Libertés du 6 janvier 1978.', 13);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La loi Hadopi du 12 juin 2009.', 13);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le règlement européen ePrivacy de 2018.', 13);


-- Question 4 (Chapitre 3)
INSERT INTO question(label, chapter_id)
VALUES ('Quelle est la différence principale entre la diffamation et le dénigrement ?', 3);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'La diffamation vise une personne ou une organisation, tandis que le dénigrement s’attaque à ses produits ou services.', 14);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La diffamation concerne uniquement les entreprises, le dénigrement les particuliers.', 14);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le dénigrement relève du droit pénal, la diffamation du droit civil.', 14);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le dénigrement ne peut pas être sanctionné juridiquement.', 14);


-- Question 5 (Chapitre 3)
INSERT INTO question(label, chapter_id)
VALUES ('Selon la loi, quel est le délai pour agir en justice en cas de diffamation ?', 3);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Trois mois à compter de la première publication du contenu litigieux.', 15);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Un an à compter de la découverte du contenu.', 15);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Cinq ans à compter de la diffusion sur Internet.', 15);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Six mois à compter de la notification à la CN.', 15);

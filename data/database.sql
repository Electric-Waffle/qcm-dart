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
INSERT INTO chapter(title) VALUES ('Chapitre 3 : L’identité numérique et ses risques');

-- Question 11
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


-- Question 12
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


-- Question 13
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


-- Question 14
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


-- Question 15
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

-- ===============================
-- CHAPITRE 4 : La preuve électronique
-- ===============================
INSERT INTO chapter(title) VALUES ('Chapitre 4 : La preuve électronique');

-- Question 16
INSERT INTO question(label, chapter_id)
VALUES ('Selon l’article 1316 du Code civil, qu’est-ce qui caractérise la preuve littérale ?', 4);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Une suite de signes intelligibles, quel que soit le support ou le mode de transmission.', 16);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Un document obligatoirement rédigé sur support papier.', 16);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une preuve exclusivement issue d’un écrit signé à la main.', 16);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Toute information transmise oralement entre deux parties.', 16);

-- Question 17
INSERT INTO question(label, chapter_id)
VALUES ('Quelles sont les deux conditions de recevabilité d’une preuve électronique ?', 4);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Authentification de l’auteur et garantie de l’intégrité du document.', 17);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Présence d’une signature manuscrite et conservation sur support papier.', 17);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Usage d’un certificat d’État et archivage dans un coffre-fort numérique.', 17);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Chiffrement systématique et stockage en ligne.', 17);

-- Question 18
INSERT INTO question(label, chapter_id)
VALUES ('Sur quel principe repose la signature électronique ?', 4);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'La cryptographie asymétrique utilisant une clé privée et une clé publique.', 18);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La reconnaissance biométrique de l’auteur.', 18);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’horodatage automatique par le serveur de messagerie.', 18);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le chiffrement symétrique basé sur une clé unique.', 18);

-- Question 19
INSERT INTO question(label, chapter_id)
VALUES ('Quel est le rôle du certificat électronique dans une signature numérique ?', 4);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Il permet de vérifier l’identité de l’auteur grâce aux informations d’identification et à la clé publique.', 19);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Il garantit uniquement la confidentialité du document signé.', 19);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Il sert à compresser les données avant transmission.', 19);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Il remplace l’usage de la clé privée lors de la signature.', 19);

-- Question 20
INSERT INTO question(label, chapter_id)
VALUES ('Quels documents électroniques ne sont pas considérés comme des écrits parfaits ?', 4);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Les courriels, SMS et MMS.', 20);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les documents signés et certifiés par l’État.', 20);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les documents dont l’intégrité est garantie par un algorithme de hachage.', 20);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les documents contenant un certificat électronique.', 20);

-- ===============================
-- CHAPITRE 5 : Les risques liés aux cyberattaques
-- ===============================
INSERT INTO chapter(title) VALUES ('Chapitre 5 : Les risques liés aux cyberattaques');

-- Question 21
INSERT INTO question(label, chapter_id)
VALUES ('Quel pourcentage d’entreprises déclare avoir subi une cyberattaque selon l’étude du CESIN ?', 5);

INSERT INTO answer(correct, label, question_id)
VALUES (1, '80 %', 21);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '60 %', 21);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '40 %', 21);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '20 %', 21);

-- Question 22
INSERT INTO question(label, chapter_id)
VALUES ('Quel est le principal type d’impact économique identifié par le CESIN lors d’une cyberattaque ?', 5);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'La perturbation de la production et l’indisponibilité du site Web.', 22);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La destruction totale des infrastructures informatiques.', 22);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le piratage systématique des comptes bancaires internes.', 22);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La perte automatique de tous les clients.', 22);

-- Question 23
INSERT INTO question(label, chapter_id)
VALUES ('Quel est l’objectif du calcul du risque acceptable pour une entreprise ?', 5);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Comparer le coût des solutions de sécurité et le coût potentiel d’un sinistre.', 23);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Déterminer la durée maximale d’une attaque avant intervention.', 23);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Identifier les employés responsables de la cybersécurité.', 23);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Calculer le montant des amendes prévues par le RGPD.', 23);

-- Question 24
INSERT INTO question(label, chapter_id)
VALUES ('Quel recours un utilisateur peut-il engager si ses données ont été compromises par une organisation ?', 5);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Un recours civil ou un recours pénal selon la nature du préjudice.', 24);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement un recours administratif.', 24);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement un recours pénal pour négligence.', 24);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Aucun recours n’est possible contre l’organisation.', 24);

-- Question 25
INSERT INTO question(label, chapter_id)
VALUES ('Quelle est la conséquence principale de la défiguration d’un site Internet ?', 5);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Une atteinte à l’image de l’entreprise et la démonstration d’un accès potentiel à des données sensibles.', 25);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une accélération du trafic et une amélioration de la visibilité du site.', 25);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La mise en conformité automatique au RGPD.', 25);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La suppression définitive des bases de données.', 25);

-- ===============================
-- CHAPITRE 6 : La charte informatique
-- ===============================
INSERT INTO chapter(title) VALUES ('Chapitre 6 : La charte informatique');

-- Question 26
INSERT INTO question(label, chapter_id)
VALUES ('Quel est l’objectif principal d’une charte informatique au sein d’une organisation ?', 6);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Définir les droits et obligations liés à l’utilisation du système d’information.', 26);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Organiser la maintenance du matériel informatique.', 26);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Encadrer uniquement l’usage d’Internet.', 26);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Remplacer le règlement intérieur de l’entreprise.', 26);

-- Question 27
INSERT INTO question(label, chapter_id)
VALUES ('Dans quels cas la charte informatique devient-elle opposable aux salariés ?', 6);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Lorsqu’elle est annexée au règlement intérieur ou au contrat de travail.', 27);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement lorsqu’elle est affichée dans les locaux.', 27);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Seulement si chaque salarié la signe individuellement.', 27);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Lorsqu’elle est publiée sur le site Internet de l’entreprise.', 27);

-- Question 28
INSERT INTO question(label, chapter_id)
VALUES ('Quel modèle correspond au fait que le salarié utilise son propre matériel pour travailler ?', 6);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'BYOD (Bring Your Own Device).', 28);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'COPE (Corporate Owned, Personally Enabled).', 28);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'CYOD (Choose Your Own Device).', 28);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'MAM (Mobile Application Management).', 28);

-- Question 29
INSERT INTO question(label, chapter_id)
VALUES ('Quelle partie d’une charte informatique permet de préciser les limites et obligations des utilisateurs ?', 6);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'L’objet et la portée de la charte.', 29);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les mesures de contrôle.', 29);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les sanctions disciplinaires.', 29);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les annexes techniques.', 29);

-- Question 30
INSERT INTO question(label, chapter_id)
VALUES ('Quel aspect doit être pris en compte dans la charte informatique avec l’apparition du BYOD, COPE et CYOD ?', 6);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Les contraintes supplémentaires liées à la protection des données personnelles.', 30);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’obligation d’interdire les appareils personnels.', 30);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La suppression des règles de sécurité pour simplifier l’accès.', 30);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La création d’un nouveau contrat de travail pour chaque utilisateur.', 30);

-- ===============================
-- CHAPITRE 7 : Les obligations légales en cas de failles de sécurité
-- ===============================
INSERT INTO chapter(title) VALUES ('Chapitre 7 : Les obligations légales en cas de failles de sécurité');

-- Question 31
INSERT INTO question(label, chapter_id)
VALUES ('Quel délai le RGPD impose-t-il aux responsables de traitement pour notifier une violation de données à la CNIL ?', 7);

INSERT INTO answer(correct, label, question_id)
VALUES (1, '72 heures à compter de la découverte de la violation.', 31);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '24 heures après la première analyse.', 31);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '7 jours ouvrés.', 31);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Aucun délai précis n’est imposé.', 31);

-- Question 32
INSERT INTO question(label, chapter_id)
VALUES ('Dans quels cas les personnes concernées doivent-elles être informées d’une violation de données ?', 7);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Lorsque la violation présente un risque élevé pour leurs droits et libertés.', 32);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement lorsque des données financières ont été compromises.', 32);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Seulement si la CNIL en fait la demande.', 32);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Lorsque l’entreprise subit une perte financière directe.', 32);

-- Question 33
INSERT INTO question(label, chapter_id)
VALUES ('À quoi sert le cahier des incidents que doit tenir une organisation ?', 7);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'À documenter toutes les violations et mesures prises pour prouver le respect des obligations de sécurité.', 33);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'À enregistrer uniquement les incidents techniques mineurs.', 33);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'À remplacer le registre des traitements imposé par le RGPD.', 33);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'À déclarer automatiquement les violations aux autorités judiciaires.', 33);

-- Question 34
INSERT INTO question(label, chapter_id)
VALUES ('Quelle est la sanction maximale prévue par l’article 83-4a du RGPD en cas de non-respect des obligations de sécurité ?', 7);

INSERT INTO answer(correct, label, question_id)
VALUES (1, '10 millions d’euros ou 2 % du chiffre d’affaires annuel mondial.', 34);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '100 000 euros et un avertissement officiel.', 34);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '1 million d’euros et suspension d’activité.', 34);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '5 % du chiffre d’affaires annuel mondial sans amende fixe.', 34);

-- Question 35
INSERT INTO question(label, chapter_id)
VALUES ('Quelle peine est prévue par l’article 323-1 du Code pénal pour un accès frauduleux à un système de traitement automatisé de données ?', 7);

INSERT INTO answer(correct, label, question_id)
VALUES (1, '3 ans d’emprisonnement et 100 000 € d’amende.', 35);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '6 mois d’emprisonnement et 15 000 € d’amende.', 35);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '5 ans d’emprisonnement et 300 000 € d’amende.', 35);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Aucune peine n’est prévue si les données ne sont pas copiées.', 35);

-- ===============================
-- Fiche Savoirs Technologiques 1 : Vulnérabilités, menaces et risques
-- ===============================
INSERT INTO chapter(title) VALUES ('Fiche Savoirs Technologiques 1 : Vulnérabilités, menaces et risques');

-- Question 36
INSERT INTO question(label, chapter_id)
VALUES ('Comment est définie une vulnérabilité en informatique ?', 8);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Une faiblesse du système d’information pouvant affecter son fonctionnement.', 36);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une attaque volontaire visant à exploiter un SI.', 36);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La conséquence financière d’une cyberattaque.', 36);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une obligation légale imposée par le RGPD.', 36);

-- Question 37
INSERT INTO question(label, chapter_id)
VALUES ('Selon la définition donnée, comment se caractérise un risque de sécurité du SI ?', 8);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Par la probabilité d’exploitation d’une vulnérabilité par une menace.', 37);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Par la somme des vulnérabilités présentes dans le système.', 37);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Par la liste des menaces potentielles d’un environnement.', 37);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Par l’évaluation exclusivement financière des impacts.', 37);

-- Question 38
INSERT INTO question(label, chapter_id)
VALUES ('Que permet de réaliser la méthode EBIOS Risk Manager développée par l’ANSSI ?', 8);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Identifier et hiérarchiser les risques dans un contexte défini.', 38);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Assurer automatiquement la protection du système d’information.', 38);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Contrôler la conformité légale d’une entreprise.', 38);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Définir les seules mesures financières à appliquer en cas d’incident.', 38);

-- Question 39
INSERT INTO question(label, chapter_id)
VALUES ('Quels éléments déterminent le niveau d’un risque informatique ?', 8);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Sa gravité et sa vraisemblance.', 39);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La taille du système d’information et le nombre d’utilisateurs.', 39);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le budget consacré à la cybersécurité.', 39);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le type de matériel et la version du système d’exploitation.', 39);

-- Question 40
INSERT INTO question(label, chapter_id)
VALUES ('Quel type d’impact l’ANSSI identifie-t-elle dans sa méthode EBIOS ?', 8);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Des impacts tels que financiers, juridiques, humains, environnementaux ou sur l’image.', 40);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement des impacts techniques.', 40);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement des impacts sur les logiciels métiers.', 40);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Uniquement des impacts liés aux obligations RGPD.', 40);

-- ===============================
-- Fiche Savoirs Technologiques 2 : Les principes de la sécurité des systèmes d’information
-- ===============================
INSERT INTO chapter(title) VALUES ('Fiche Savoirs Technologiques 2 : Les principes de la sécurité des systèmes d’information');

-- Question 41
INSERT INTO question(label, chapter_id)
VALUES ('Que garantit le principe de confidentialité dans un système d’information ?', 9);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'L’accès aux données uniquement par les personnes autorisées.', 41);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La protection des données contre les pertes matérielles.', 41);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La disponibilité des données en continu.', 41);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’archivage automatique de toutes les données sensibles.', 41);

-- Question 42
INSERT INTO question(label, chapter_id)
VALUES ('Quel principe consiste à garantir l’accessibilité continue des données aux utilisateurs autorisés ?', 9);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'La disponibilité.', 42);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’intégrité.', 42);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La preuve.', 42);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La confidentialité.', 42);

-- Question 43
INSERT INTO question(label, chapter_id)
VALUES ('Quel est l’objectif du principe d’intégrité des données ?', 9);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Garantir que les données ne soient pas modifiées durant leur traitement, stockage ou transfert.', 43);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Assurer l’accès aux données même en cas de panne réseau.', 43);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Vérifier que seules les personnes autorisées accèdent aux données.', 43);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Stocker automatiquement toutes les anciennes versions des données.', 43);

-- Question 44
INSERT INTO question(label, chapter_id)
VALUES ('Quels éléments permettent d’assurer la non-répudiation dans un système d’information ?', 9);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'L’authentification, l’imputabilité et la traçabilité.', 44);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La redondance, le chiffrement et le hachage.', 44);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le cryptage SSL, les droits utilisateurs et les sauvegardes.', 44);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’identification biométrique exclusive.', 44);

-- Question 45
INSERT INTO question(label, chapter_id)
VALUES ('Quel outil permet de retracer les actions effectuées dans un système d’information pour prouver un acte ?', 9);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Le fichier de journalisation (log).', 45);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le pare-feu.', 45);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le système de chiffrement SSL.', 45);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le registre des utilisateurs.', 45);

-- ===============================
-- Fiche Savoirs Technologiques 3 : Sécurité et sûreté
-- ===============================
INSERT INTO chapter(title) VALUES ('Fiche Savoirs Technologiques 3 : Sécurité et sûreté');

-- Question 46
INSERT INTO question(label, chapter_id)
VALUES ('Quelle est la différence principale entre la sûreté et la sécurité informatique ?', 10);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'La sûreté concerne les risques accidentels, tandis que la sécurité vise les actes de malveillance.', 46);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La sûreté protège uniquement les données, tandis que la sécurité protège le matériel.', 46);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La sûreté traite des menaces externes et la sécurité des menaces internes uniquement.', 46);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'La sûreté est réservée aux organisations publiques, la sécurité aux entreprises privées.', 46);

-- Question 47
INSERT INTO question(label, chapter_id)
VALUES ('Quel type de menace relève de la sûreté informatique ?', 10);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Les menaces non intentionnelles telles que les accidents naturels.', 47);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les attaques par déni de service.', 47);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le sabotage volontaire d’un système.', 47);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'L’usurpation d’identité dans un courriel.', 47);

-- Question 48
INSERT INTO question(label, chapter_id)
VALUES ('Selon l’ANSSI, quelle catégorie d’attaquants dispose de moyens sophistiqués et quasi illimités ?', 10);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Les organisations structurées comme les États ou le crime organisé.', 48);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les individus isolés ayant des compétences limitées.', 48);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les groupes guidés par une simple curiosité technologique.', 48);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les utilisateurs négligents au sein de l’organisation.', 48);

-- Question 49
INSERT INTO question(label, chapter_id)
VALUES ('Quel type d’attaque correspond à la déstabilisation selon l’ANSSI ?', 10);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Déni de service ou défiguration d’un site web.', 49);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Rançongiciel bloquant l’accès aux données.', 49);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Vol de données via hameçonnage.', 49);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Usurpation d’identité par message ciblé.', 49);

-- Question 50
INSERT INTO question(label, chapter_id)
VALUES ('Quel est l’objectif d’une attaque par hameçonnage (phishing) ?', 10);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Tromper un utilisateur pour obtenir des informations personnelles ou bancaires.', 50);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Infecter un site web afin de contaminer les visiteurs.', 50);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Rendre des données inaccessibles jusqu’au paiement d’une rançon.', 50);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Modifier les pages d’un site web pour afficher un message idéologique.', 50);

-- ===============================
-- Fiche Savoirs Technologiques 4 : Sécurisation d’un terminal utilisateur
-- ===============================
INSERT INTO chapter(title) VALUES ('Fiche Savoirs Technologiques 4 : Sécurisation d’un terminal utilisateur');

-- Question 51
INSERT INTO question(label, chapter_id)
VALUES ('Quelle action fait partie des règles de configuration d’un système d’exploitation sécurisé ?', 11);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Configurer les mises à jour automatiques et installer les correctifs.', 51);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Autoriser l’installation de toutes les applications sans restriction.', 51);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Activer l’exécution automatique des périphériques USB.', 51);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Permettre le téléchargement de sources inconnues.', 51);

-- Question 52
INSERT INTO question(label, chapter_id)
VALUES ('Quel est le rôle d’un pare-feu (firewall) ?', 11);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Filtrer les paquets entrants et sortants selon des règles définies.', 52);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Stocker les mots de passe dans un coffre-fort sécurisé.', 52);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Analyser les e-mails pour détecter les spams.', 52);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Assurer un accès unique à plusieurs services via un mot de passe.', 52);

-- Question 53
INSERT INTO question(label, chapter_id)
VALUES ('Selon les recommandations de l’ANSSI, quel est un bon usage concernant les mots de passe ?', 11);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Utiliser des mots de passe différents pour chaque service.', 53);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Demander à un collègue de créer votre mot de passe.', 53);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Envoyer vos mots de passe sur votre messagerie personnelle.', 53);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Utiliser le même mot de passe pour les comptes personnels et professionnels.', 53);

-- Question 54
INSERT INTO question(label, chapter_id)
VALUES ('Quel élément correspond à l’authentification à double facteur ?', 11);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Un mot de passe + un code temporaire envoyé sur un appareil.', 54);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Deux mots de passe différents.', 54);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une empreinte biométrique seule.', 54);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le stockage du mot de passe dans le navigateur.', 54);

-- Question 55
INSERT INTO question(label, chapter_id)
VALUES ('Quel est l’intérêt d’utiliser un proxy pour naviguer sur Internet ?', 11);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Filtrer les sites malveillants et journaliser les requêtes.', 55);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Accélérer les mises à jour du système.', 55);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Supprimer automatiquement les e-mails indésirables.', 55);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Créer automatiquement des mots de passe forts.', 55);

-- ===============================
-- Fiche Savoirs Technologiques 5 : Authentifications, privilèges et habilitations
-- ===============================
INSERT INTO chapter(title) VALUES ('Fiche Savoirs Technologiques 5 : Authentifications, privilèges et habilitations');

-- Question 56
INSERT INTO question(label, chapter_id)
VALUES ('Quel est le rôle de l’authentification dans un système d’information ?', 12);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Vérifier que l’utilisateur est bien celui qu’il prétend être.', 56);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Déterminer les droits d’accès et les permissions de l’utilisateur.', 56);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Créer automatiquement des comptes utilisateurs.', 56);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer un privilège administrateur par défaut.', 56);

-- Question 57
INSERT INTO question(label, chapter_id)
VALUES ('Où sont stockés les comptes locaux et leurs mots de passe sous Windows ?', 12);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Dans la base SAM (Security Accounts Manager).', 57);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Dans le registre LDAP.', 57);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Dans un fichier texte chiffré nommé accounts.ini.', 57);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Dans le protocole Kerberos.', 57);

-- Question 58
INSERT INTO question(label, chapter_id)
VALUES ('Quel type de compte possède les privilèges les plus élevés dans un SI ?', 12);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Le compte administrateur (superutilisateur).', 58);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le compte utilisateur standard.', 58);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le compte invité.', 58);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Le compte itinérant.', 58);

-- Question 59
INSERT INTO question(label, chapter_id)
VALUES ('Quel est le principe du “moindre privilège” ?', 12);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'N’accorder que les habilitations strictement nécessaires aux activités d’un utilisateur.', 59);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer systématiquement les droits maximum pour éviter les blocages.', 59);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Donner les mêmes privilèges à tous les utilisateurs d’un même service.', 59);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Permettre aux utilisateurs invités d’accéder aux données sensibles.', 59);

-- Question 60
INSERT INTO question(label, chapter_id)
VALUES ('Quelle est une bonne pratique concernant les comptes administrateurs ?', 12);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Utiliser des comptes d’administration dédiés et non partagés.', 60);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Utiliser le même compte administrateur pour toutes les tâches.', 60);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Autoriser les utilisateurs à se connecter avec un compte administrateur pour leurs tâches quotidiennes.', 60);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Ne pas séparer les comptes administrateurs et utilisateurs.', 60);

-- ===============================
-- Fiche Savoirs Technologiques 6 : Gestion des droits d'accès aux données
-- ===============================
INSERT INTO chapter(title) VALUES ("Fiche Savoirs Technologiques 6 : Gestion des droits d'accès aux données");

-- Question 61
INSERT INTO question(label, chapter_id)
VALUES ("Quel est le rôle du contrôle d'accès dans un système d'information ?", 13);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Préciser qui peut effectuer quelles actions sur quelles données.', 61);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer automatiquement des mots de passe aux utilisateurs.', 61);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Supprimer les fichiers inutilisés du système.', 61);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Exécuter tous les programmes installés.', 61);

-- Question 62
INSERT INTO question(label, chapter_id)
VALUES ('Que signifient les lettres r, w et x dans les droits UNIX ?', 13);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'r = lecture, w = écriture, x = exécution', 62);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'r = suppression, w = lecture, x = exécution', 62);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'r = exécution, w = écriture, x = lecture', 62);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'r = lecture, w = exécution, x = suppression', 62);

-- Question 63
INSERT INTO question(label, chapter_id)
VALUES ('Quel est le principe du modèle DAC (Discretionary Access Control) ?', 13);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Le créateur d’une ressource décide qui peut réaliser quelle action sur cette ressource.', 63);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les droits sont attribués en fonction du rôle de l’utilisateur.', 63);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Tous les utilisateurs ont les mêmes droits par défaut.', 63);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les droits sont déterminés automatiquement par le système en fonction de l’activité.', 63);

-- Question 64
INSERT INTO question(label, chapter_id)
VALUES ('Quel est l’avantage du modèle RBAC (Role-Based Access Control) ?', 13);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Les utilisateurs héritent des droits associés à un rôle, simplifiant la gestion des permissions.', 64);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les utilisateurs créent eux-mêmes les droits sur chaque fichier.', 64);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Chaque utilisateur a tous les privilèges par défaut.', 64);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Les droits d’accès sont attribués aléatoirement par le système.', 64);

-- Question 65
INSERT INTO question(label, chapter_id)
VALUES ('Dans un Active Directory, à quoi servent les groupes de sécurité ?', 13);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Attribuer des droits particuliers à plusieurs utilisateurs de manière centralisée.', 65);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Stocker les mots de passe des utilisateurs.', 65);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Exécuter les fichiers sur tous les ordinateurs du domaine.', 65);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Supprimer automatiquement les comptes inactifs.', 65);

-- ===============================
-- Fiche Savoirs Technologiques 7 : Sécurisation des communications dans un réseau local
-- ===============================
INSERT INTO chapter(title) VALUES ('Fiche Savoirs Technologiques 7 : Sécurisation des communications dans un réseau local');

-- Question 66
INSERT INTO question(label, chapter_id)
VALUES ("Quel est le rôle d'un protocole dans un réseau informatique ?", 14);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Définir un ensemble de règles à suivre pour établir une communication.', 66);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer automatiquement des VLANs à tous les hôtes.', 66);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Supprimer les paquets non sécurisés.', 66);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Générer des adresses IP pour chaque ordinateur.', 66);

-- Question 67
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole utilise un échange de clés secrètes pour sécuriser l'administration à distance ?", 14);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'SSH (Secure Shell)', 67);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '802.1x', 67);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'EAP', 67);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'HTTP', 67);

-- Question 68
INSERT INTO question(label, chapter_id)
VALUES ("Quel est l'objectif principal d\'un VLAN dans un réseau local ?", 14);

INSERT INTO answer(correct, label, question_id)
VALUES (1, "Regrouper de façon logique un ensemble d'hôtes indépendamment de leur localisation physique.", 68);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer automatiquement des adresses IP publiques.', 68);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Supprimer les paquets non autorisés sur le réseau.', 68);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Augmenter la vitesse de connexion de tous les ordinateurs.', 68);

-- Question 69
INSERT INTO question(label, chapter_id)
VALUES ('Quel type de VLAN attribue un port du commutateur à un VLAN spécifique de manière statique ?', 14);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'VLAN de niveau 1', 69);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN de niveau 2', 69);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN de niveau 3', 69);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN dynamique', 69);

-- Question 70
INSERT INTO question(label, chapter_id)
VALUES ("Quelle est la fonction principale d'un routeur dans un réseau local ?", 14);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Relier différents réseaux et acheminer les données selon des règles de sécurité.', 70);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer des adresses MAC aux périphériques.', 70);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Créer automatiquement des VLANs sur un switch.', 70);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Surveiller uniquement le trafic réseau local sans le filtrer.', 70);

-- ===============================
-- Lexique : Sécurisation des communications dans un réseau local
-- ===============================
INSERT INTO chapter(title) VALUES ('Lexique : Sécurisation des communications dans un réseau local');

-- Question 71
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole permet de sécuriser l'accès au réseau en utilisant AAA ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, '802.1x', 71);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'SSH', 71);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'EAP', 71);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 71);

-- Question 72
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole est utilisé pour administrer les équipements réseau de manière sécurisée ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'SSH', 72);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '802.1x', 72);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'EAP', 72);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 72);

-- Question 73
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole est extensible et permet de transporter différentes méthodes d'authentification ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'EAP', 73);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'SSH', 73);
INSERT INTO answer(correct, label, question_id)
VALUES (0, '802.1x', 73);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 73);

-- Question 74
INSERT INTO question(label, chapter_id)
VALUES ("Qu'est-ce qu'un VLAN ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Un réseau local virtuel regroupant des hôtes de façon logique.', 74);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Un protocole de sécurité réseau.', 74);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Un type de routeur.', 74);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une adresse IP publique.', 74);

-- Question 75
INSERT INTO question(label, chapter_id)
VALUES ("Quel VLAN utilise l'adresse MAC pour déterminer l'appartenance d'un hôte ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'VLAN de niveau 2', 75);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN de niveau 1', 75);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN de niveau 3', 75);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN dynamique', 75);

-- Question 76
INSERT INTO question(label, chapter_id)
VALUES ("Quel équipement permet de relier différents réseaux et appliquer des règles de filtrage ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Routeur', 76);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Commutateur', 76);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Serveur Web', 76);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Proxy', 76);

-- Question 77
INSERT INTO question(label, chapter_id)
VALUES ("Que permet de faire une ACL sur un routeur ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Filtrer les paquets selon des critères spécifiques', 77);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer des VLANs automatiquement', 77);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Crypter les données de l’utilisateur', 77);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Détecter automatiquement les virus', 77);

-- Question 78
INSERT INTO question(label, chapter_id)
VALUES ("Quelle est la fonction principale d'un commutateur ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Relier plusieurs segments et créer des circuits virtuels', 78);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Acheminer les paquets entre réseaux différents', 78);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Gérer les mots de passe des utilisateurs', 78);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Synchroniser l’horloge des serveurs', 78);

-- Question 79
INSERT INTO question(label, chapter_id)
VALUES ("Que signifie AAA dans le protocole 802.1x ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Authentification, Autorisation, Accounting', 79);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Adresse, Accès, Authentification', 79);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Application, Allocation, Audit', 79);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Aucune des réponses', 79);

-- Question 80
INSERT INTO question(label, chapter_id)
VALUES ("Qu'est-ce qu'une passerelle dans un réseau local ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Un routeur permettant la communication entre réseaux différents', 80);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Un commutateur pour connecter des VLANs', 80);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Une adresse IP pour un hôte', 80);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Un protocole de sécurisation', 80);

-- Question 81
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole permet de synchroniser l'horloge des ordinateurs d'un réseau ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'NTP', 81);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'SSH', 81);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'TLS', 81);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'IP', 81);

-- Question 82
INSERT INTO question(label, chapter_id)
VALUES ("Quel dispositif permet de filtrer les contenus web et malwares sur un réseau local ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Proxy', 82);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Routeur', 82);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Switch', 82);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 82);

-- Question 83
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole sécurise les échanges sur Internet via un canal chiffré ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'TLS', 83);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'NTP', 83);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 83);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'LDAP', 83);

-- Question 84
INSERT INTO question(label, chapter_id)
VALUES ("Quelle est la fonction principale d'un VPN ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Prolonger le réseau local via une liaison cryptée', 84);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attribuer des VLANs aux hôtes', 84);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Synchroniser les horloges des serveurs', 84);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Filtrer les paquets selon les adresses MAC', 84);

-- Question 85
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole permet de créer un canal sécurisé pour les échanges sur le Web et est représenté par un cadenas sur les navigateurs ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'SSL', 85);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'TLS', 85);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'HTTP', 85);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'IP', 85);

-- Question 86
INSERT INTO question(label, chapter_id)
VALUES ("Quel outil détecte et bloque automatiquement les attaques informatiques ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'IPS', 86);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Firewall classique', 86);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Commutateur', 86);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Proxy', 86);

-- Question 87
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole permet l'interrogation et la modification des services d'annuaire ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'LDAP', 87);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Kerberos', 87);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'NTP', 87);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'SSL', 87);

-- Question 88
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole réseau utilise des tickets pour l'authentification et évite la transmission de mots de passe en clair ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Kerberos', 88);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'SSH', 88);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'EAP', 88);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'TLS', 88);

-- Question 89
INSERT INTO question(label, chapter_id)
VALUES ("Quel système de fichiers de Microsoft utilise les ACL et la journalisation des fichiers ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'NTFS', 89);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'FAT32', 89);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'EXT4', 89);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'APFS', 89);

-- Question 90
INSERT INTO question(label, chapter_id)
VALUES ("Quel type de mot de passe est composé d'une phrase pour des raisons mnémotechniques ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Passphrase', 90);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'MD5', 90);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'AES', 90);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'PIN', 90);

-- Question 91
INSERT INTO question(label, chapter_id)
VALUES ("Quel élément identifie de manière unique une organisation sur Internet ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'IDN', 91);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 91);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'IP', 91);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'LDAP', 91);

-- Question 92
INSERT INTO question(label, chapter_id)
VALUES ("Quelle est la différence entre identité déclarative et identité agissante ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Déclarative = ce qu’on partage, Agissante = traces laissées sur Internet', 92);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Déclarative = traces, Agissante = ce qu’on partage', 92);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Déclarative = VPN, Agissante = VLAN', 92);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Déclarative = protocole, Agissante = adresse IP', 92);

-- Question 93
INSERT INTO question(label, chapter_id)
VALUES ("Quel organisme français régule la protection des données personnelles ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'CNIL', 93);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'ANSSI', 93);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'RGPD', 93);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'DPO', 93);

-- Question 94
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole permet de vérifier l’intégrité d’une information via une empreinte numérique ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'MD5', 94);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'TLS', 94);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'SSH', 94);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'NTP', 94);

-- Question 95
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole ou outil permet de protéger l’accès à des fichiers en fonction d’utilisateurs et de groupes ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'ACL', 95);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'LDAP', 95);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Kerberos', 95);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 95);

-- Question 96
INSERT INTO question(label, chapter_id)
VALUES ("Quel type d'attaque teste toutes les combinaisons possibles pour deviner un mot de passe ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Attaque par force brute', 96);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attaque par dictionnaire', 96);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Attaque par table arc-en-ciel', 96);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Hameçonnage', 96);

-- Question 97
INSERT INTO question(label, chapter_id)
VALUES ("Quel dispositif informatique est utilisé pour héberger des sites Web ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Serveur Web', 97);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Routeur', 97);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Proxy', 97);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Commutateur', 97);

-- Question 98
INSERT INTO question(label, chapter_id)
VALUES ("Quel terme désigne la possibilité d’attribuer la responsabilité d’un acte à une personne ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Imputabilité', 98);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Authentification', 98);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Vraisemblance', 98);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Habilitation', 98);

-- Question 99
INSERT INTO question(label, chapter_id)
VALUES ("Quel système informatique assure la vérification de la légitimité d’une demande d’accès ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'Authentification', 99);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Imputabilité', 99);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'ACL', 99);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'Patch', 99);

-- Question 100
INSERT INTO question(label, chapter_id)
VALUES ("Quel protocole est utilisé pour chiffrer les communications web et est souvent remplacé par TLS ?", 15);

INSERT INTO answer(correct, label, question_id)
VALUES (1, 'SSL', 100);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'SSH', 100);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'IP', 100);
INSERT INTO answer(correct, label, question_id)
VALUES (0, 'VLAN', 100);


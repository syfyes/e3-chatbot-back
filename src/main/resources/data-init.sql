
--mot de passe = Root --
INSERT INTO app_user ( email, password, pseudo, admin) VALUES
    ( 'a@a.com', '$2a$10$snvDOPIPLlteMkz/sIT4fuB7GEIpUyWf/tEuSMKoNHcKCvc9mNQ76', 'utilisateur A', true),
    ( 'b@b.com', '$2a$10$snvDOPIPLlteMkz/sIT4fuB7GEIpUyWf/tEuSMKoNHcKCvc9mNQ76', 'utilisateur B', false),
    ( 'c@c.com', '$2a$10$snvDOPIPLlteMkz/sIT4fuB7GEIpUyWf/tEuSMKoNHcKCvc9mNQ76', 'utilisateur C', false);

INSERT INTO product (name) VALUES
                               ('Farine de blé'), ('Farine de riz'), ('Oeuf'), ('Lait de vache'), ('Lait de coco'),
                               ('Beurre'), ('Huile d''olive'), ('Poulet'), ('Boeuf'), ('Saumon'),
                               ('Crevettes'), ('Tofu'), ('Pois chiches'), ('Lentilles corail'), ('Quinoa'),
                               ('Riz Basmati'), ('Pâtes Penne'), ('Spaghetti'), ('Pomme de terre'), ('Avocat'),
                               ('Tomate'), ('Aubergine'), ('Courgette'), ('Poivron'), ('Oignon'),
                               ('Ail'), ('Gingembre'), ('Citron vert'), ('Basilic'), ('Coriandre'),
                               ('Persil'), ('Curry'), ('Piment'), ('Sauce soja'), ('Miel'),
                               ('Chocolat noir'), ('Pomme'), ('Banane'), ('Fraise'), ('Noix de cajou');

INSERT INTO tag (name) VALUES
                           ('Végétarien'), ('Végétalien'), ('Sans Gluten'), ('Sans Lactose'),
                           ('Épicé'), ('Sucré-Salé'), ('Asiatique'), ('Méditerranéen'),
                           ('Français'), ('Indien'), ('Rapide'), ('Gastronomique'),
                           ('Petit-déjeuner'), ('Dessert'), ('Entrée'), ('Plat Principal'),
                           ('Allergène: Fruits à coque'), ('Allergène: Crustacés'), ('Riche en Protéines'), ('Low Carb');

INSERT INTO recipe (name, description, creator_id) VALUES
                                                       ('Curry de Tofu au coco', 'Un plat crémeux et épicé parfait pour le soir.', 1),
                                                       ('Salade de Quinoa', 'Fraîcheur et croquant avec légumes de saison.', 1),
                                                       ('Poulet Basquaise', 'Le classique du sud-ouest aux poivrons.', 1),
                                                       ('Pasta alla Norma', 'Pâtes aux aubergines et tomates cerises.', 1),
                                                       ('Saumon Teriyaki', 'Saumon laqué au gingembre et soja.', 1),
-- ... (On continue la liste jusqu'à 50)
                                                       ('Omelette aux herbes', 'Simple, rapide et efficace.', 1),
                                                       ('Wok de crevettes', 'Saisi rapide avec légumes croquants.', 1),
                                                       ('Dahl de lentilles', 'Le réconfort de l''Inde en un bol.', 1),
                                                       ('Ratatouille traditionnelle', 'Mijoté de légumes du soleil.', 1),
                                                       ('Mousse au chocolat', 'Le dessert aérien sans gluten.', 1),
                                                       ('Poulet au Curry', 'Un classique dont on ne se lasse pas.', 1),
                                                       ('Risotto aux champignons', 'Onctueux et parfumé à l''huile de truffe.', 1),
                                                       ('Tacos Veggie', 'Avocat, oignons rouges et haricots noirs.', 1),
                                                       ('Smoothie Banane-Fraise', 'Le plein de vitamines dès le matin.', 1),
                                                       ('Filet de boeuf grillé', 'Viande tendre avec purée maison.', 1),
                                                       ('Soupe Pho', 'Bouillon parfumé et nouilles de riz.', 1),
                                                       ('Pad Thaï', 'Le célèbre plat de rue thaïlandais.', 1),
                                                       ('Burger Maison', 'Pain brioché, boeuf et fromage fondant.', 1),
                                                       ('Gratin Dauphinois', 'Pommes de terre et crème infusée à l''ail.', 1),
                                                       ('Sushis au Saumon', 'Riz vinaigré et poisson ultra frais.', 1),
                                                       ('Lasagnes à la Bolognaise', 'Le plat familial par excellence.', 1),
                                                       ('Salade César', 'Poulet grillé, croûtons et sauce crémeuse.', 1),
                                                       ('Tajine d''agneau', 'Mijoté aux pruneaux et amandes.', 1),
                                                       ('Gambas à l''ail', 'Saisies à la plancha avec persillade.', 1),
                                                       ('Poke Bowl', 'Poisson cru, riz et crudités colorées.', 1),
                                                       ('Crêpes Bretonnes', 'La recette classique à garnir selon envie.', 1),
                                                       ('Chili con Carne', 'Boeuf, piment et haricots rouges.', 1),
                                                       ('Houmous maison', 'Purée de pois chiches au tahiné.', 1),
                                                       ('Tartare de saumon', 'Finesse et fraîcheur au citron vert.', 1),
                                                       ('Paella Royale', 'Riz safrané, fruits de mer et chorizo.', 1),
                                                       ('Bo Bun', 'Salade de nouilles tièdes au boeuf.', 1),
                                                       ('Fondue Savoyarde', 'Le plaisir du fromage partagé.', 1),
                                                       ('Quiche Lorraine', 'Pâte brisée, lardons et appareil crémeux.', 1),
                                                       ('Falafels croustillants', 'Boulettes de pois chiches aux herbes.', 1),
                                                       ('Gazpacho Andalou', 'Soupe froide de tomates et poivrons.', 1),
                                                       ('Boeuf Bourguignon', 'Viande fondante au vin rouge.', 1),
                                                       ('Taboulé Libanais', 'Beaucoup de persil, menthe et boulgour.', 1),
                                                       ('Brochettes de poulet Yakitori', 'Poulet grillé sauce sucrée.', 1),
                                                       ('Moussaka Grequue', 'Gratin d''aubergines et viande hachée.', 1),
                                                       ('Cookies aux noix', 'Moelleux à l''intérieur, croquant dehors.', 1),
                                                       ('Brownie fondant', 'Le gâteau ultra chocolaté.', 1),
                                                       ('Tarte aux pommes', 'Fine et caramélisée.', 1),
                                                       ('Salade de lentilles', 'Vinaigrette moutardée et oignons rouges.', 1),
                                                       ('Couscous Légumes', 'Semoule fine et bouillon épicé.', 1),
                                                       ('Filet de limande', 'Beurre citronné et riz blanc.', 1),
                                                       ('Poke au Tofu', 'Alternative vegan au poisson cru.', 1),
                                                       ('Soupe à l''oignon', 'Gratinée au fromage.', 1),
                                                       ('Blanquette de veau', 'Sauce blanche onctueuse.', 1),
                                                       ('Carpaccio de boeuf', 'Fines tranches et copeaux de parmesan.', 1),
                                                       ('Pizza Margherita', 'Tomate, mozzarella et basilic frais.', 1);


INSERT INTO recipe_products (recipe_id, products_id) VALUES
                                                         (1, 12), (1, 5), (1, 32), -- Recette 1 : Tofu, Coco, Curry
                                                         (2, 15), (2, 20), (2, 21), -- Recette 2 : Quinoa, Avocat, Tomate
                                                         (3, 8), (3, 24), (3, 21),  -- Recette 3 : Poulet, Poivron, Tomate
                                                         (4, 17), (4, 22), (4, 21), -- Recette 4 : Pâtes, Aubergine, Tomate
                                                         (5, 10), (5, 27), (5, 34); -- Recette 5 : Saumon, Gingembre, Soja


INSERT INTO recipe_products (recipe_id, products_id) VALUES
-- 1-10 : Plats variés
(1, 12), (1, 5), (1, 32), (2, 15), (2, 20), (2, 21), (3, 8), (3, 24), (3, 21), (4, 17), (4, 22), (4, 21), (5, 10), (5, 27), (5, 34),
(6, 3), (6, 31), (6, 6), (7, 11), (7, 23), (7, 26), (8, 14), (8, 5), (8, 32), (9, 22), (9, 23), (9, 21), (10, 36), (10, 3), (10, 35),
-- 11-20 : Classiques et du monde
(11, 8), (11, 32), (11, 16), (12, 16), (12, 26), (13, 20), (13, 13), (13, 25), (14, 38), (14, 39), (14, 35), (15, 9), (15, 19), (15, 7),
(16, 16), (16, 27), (16, 30), (17, 16), (17, 11), (17, 34), (18, 9), (18, 1), (18, 6), (19, 19), (19, 4), (19, 26), (20, 16), (20, 10),
-- 21-30 : Familial et Fraîcheur
(21, 18), (21, 9), (21, 21), (22, 8), (22, 3), (23, 9), (23, 40), (24, 11), (24, 26), (24, 31), (25, 10), (25, 16), (25, 20),
(26, 1), (26, 3), (26, 4), (27, 9), (27, 13), (27, 33), (28, 13), (28, 7), (28, 26), (29, 10), (29, 28), (30, 16), (30, 11), (30, 24),
-- 31-40 : International et Terroir
(31, 16), (31, 9), (31, 30), (32, 4), (32, 6), (33, 1), (33, 3), (34, 13), (34, 31), (35, 21), (35, 24), (35, 20), (36, 9), (36, 25),
(37, 31), (37, 30), (38, 8), (38, 34), (39, 22), (39, 9), (40, 40), (40, 1), (40, 6),
-- 41-50 : Douceurs et Quotidiens
(41, 36), (41, 6), (42, 37), (42, 1), (43, 14), (43, 25), (44, 16), (44, 32), (45, 10), (45, 28), (46, 12), (46, 20), (47, 25), (47, 6),
(48, 9), (48, 4), (49, 9), (49, 7), (50, 1), (50, 21), (50, 31);

INSERT INTO recipe_tags (recipe_id, tags_id) VALUES
-- 1-10 : Focus Régimes
(1, 1), (1, 5), (1, 7), (2, 1), (2, 3), (2, 11), (3, 8), (3, 16), (4, 1), (4, 8), (5, 7), (5, 20),
(6, 1), (6, 11), (6, 13), (7, 18), (7, 7), (8, 2), (8, 10), (9, 2), (9, 8), (10, 14), (10, 3),
-- 11-20 : Plats du monde
(11, 10), (11, 5), (12, 1), (12, 12), (13, 1), (13, 20), (14, 14), (14, 13), (15, 16), (15, 19),
(16, 7), (16, 5), (17, 7), (17, 11), (18, 16), (18, 19), (19, 1), (19, 8), (20, 7), (20, 12),
-- 21-30 : Gastronomie et Santé
(21, 16), (21, 9), (22, 11), (22, 16), (23, 10), (23, 6), (24, 18), (24, 11), (25, 7), (25, 20),
(26, 13), (26, 9), (27, 5), (27, 16), (28, 2), (28, 15), (29, 11), (29, 3), (30, 8), (30, 18),
-- 31-40 : Diversité
(31, 7), (31, 11), (32, 9), (32, 12), (33, 9), (33, 11), (34, 2), (34, 10), (35, 8), (35, 15),
(36, 9), (36, 12), (37, 2), (37, 8), (38, 7), (38, 6), (39, 8), (39, 16), (40, 14), (40, 17),
-- 41-50 : Finalisation
(41, 14), (41, 6), (42, 14), (42, 1), (43, 1), (43, 20), (44, 2), (44, 10), (45, 16), (45, 4),
(46, 2), (46, 7), (47, 1), (47, 11), (48, 9), (48, 12), (49, 15), (49, 20), (50, 1), (50, 8);